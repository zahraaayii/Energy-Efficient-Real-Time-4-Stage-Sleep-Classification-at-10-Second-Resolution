list_string = {'ucddb002', 'ucddb003', 'ucddb005', 'ucddb006', 'ucddb007', 'ucddb008', 'ucddb009', ...
               'ucddb010', 'ucddb011', 'ucddb012', 'ucddb013', 'ucddb014', 'ucddb015', 'ucddb017', ... 
               'ucddb018', 'ucddb019', 'ucddb020', 'ucddb021', 'ucddb022', 'ucddb023', 'ucddb024', ...
               'ucddb025', 'ucddb026', 'ucddb027', 'ucddb028'}; 

for l=1:length(list_string)
    
    [signalorig,Fs,tm]=rdsamp(strcat('data\',strcat(list_string{l},'.rec')));
    signal=signalorig(:,6);

    save(strcat('rec_to_mat\',list_string{l}),'signal')
end