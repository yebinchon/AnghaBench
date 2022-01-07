
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ext4_dir_entry_tail {int det_reserved_ft; int det_rec_len; } ;
struct buffer_head {int b_data; } ;


 struct ext4_dir_entry_tail* EXT4_DIRENT_TAIL (int ,unsigned int) ;
 int EXT4_FT_DIR_CSUM ;
 int ext4_rec_len_to_disk (int,unsigned int) ;
 int memset (struct ext4_dir_entry_tail*,int ,int) ;

void ext4_initialize_dirent_tail(struct buffer_head *bh,
     unsigned int blocksize)
{
 struct ext4_dir_entry_tail *t = EXT4_DIRENT_TAIL(bh->b_data, blocksize);

 memset(t, 0, sizeof(struct ext4_dir_entry_tail));
 t->det_rec_len = ext4_rec_len_to_disk(
   sizeof(struct ext4_dir_entry_tail), blocksize);
 t->det_reserved_ft = EXT4_FT_DIR_CSUM;
}
