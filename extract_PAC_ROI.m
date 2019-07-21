PATHIN='E:\cue\PAC_data\switch\';
PATHOUT='E:\cue\PAC_data\switch\';
% % for s=1:130
% %     load([PATHIN,num2str(s),'_pac.mat']);
% %     leng=length(PAC_data);
% %     data=zeros(leng,8,21);
% %     for i=1:59
% %         for j=1:leng
% %             A=PAC_data{1,j}.pac.DirectPAC;
% %             data(j,:,:)=reshape(A(i,:,:,:),8,21);
% %         end
% %         DATA=reshape(mean(data,1),8,21);
% %     %     figure;
% %     %     pcolor([15,16,18,19,20,21,23,24,26,27,29,30,32,34,36,38,40,42,44,46,48],[4,4.96,5.9,6.9,7.9,8.9,10,11],DATA);
% %     %     colorbar;
% %     %     title(char(EEG.chanlocs(i).labels));
% %         save([PATHOUT,'sub',num2str(s),'_channel',num2str(i),'.mat'],'DATA')
% %     end
% % end
% Data=zeros(130,8,21);
% for i=1:59
%     for s=1:130
%         load([PATHIN,'sub',num2str(s),'_channel',num2str(i),'.mat']);
%         Data(s,:,:)=DATA;
%     end
%     save([PATHOUT,'channel',num2str(i),'.mat'],'Data');
% end

for i=1:59
    load([PATHOUT,'channel',num2str(i),'.mat']);
    figure;
    pcolor([15,16,18,19,20,21,23,24,26,27,29,30,32,34,36,38,40,42,44,46,48],[4,4.96,5.9,6.9,7.9,8.9,10,11],reshape(mean(Data,1),8,21));
    colorbar;
    title(char(EEG.chanlocs(i).labels));
end


































