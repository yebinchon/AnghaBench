
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_dir_entry_tail {scalar_t__ det_reserved_ft; scalar_t__ det_reserved_zero2; scalar_t__ det_rec_len; scalar_t__ det_reserved_zero1; } ;
struct ext4_dir_entry {scalar_t__ rec_len; } ;
struct buffer_head {int b_data; } ;


 int EXT4_BLOCK_SIZE (int ) ;
 struct ext4_dir_entry_tail* EXT4_DIRENT_TAIL (int,int) ;
 scalar_t__ EXT4_FT_DIR_CSUM ;
 int le16_to_cpu (scalar_t__) ;

__attribute__((used)) static struct ext4_dir_entry_tail *get_dirent_tail(struct inode *inode,
         struct buffer_head *bh)
{
 struct ext4_dir_entry_tail *t;
 t = EXT4_DIRENT_TAIL(bh->b_data, EXT4_BLOCK_SIZE(inode->i_sb));


 if (t->det_reserved_zero1 ||
     le16_to_cpu(t->det_rec_len) != sizeof(struct ext4_dir_entry_tail) ||
     t->det_reserved_zero2 ||
     t->det_reserved_ft != EXT4_FT_DIR_CSUM)
  return ((void*)0);

 return t;
}
