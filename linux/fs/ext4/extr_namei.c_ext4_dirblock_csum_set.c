
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_sb; } ;
struct ext4_dir_entry_tail {int det_checksum; } ;
struct buffer_head {int b_data; } ;


 int ext4_dirblock_csum (struct inode*,int,char*) ;
 int ext4_has_metadata_csum (int ) ;
 struct ext4_dir_entry_tail* get_dirent_tail (struct inode*,struct buffer_head*) ;
 int warn_no_space_for_csum (struct inode*) ;

__attribute__((used)) static void ext4_dirblock_csum_set(struct inode *inode,
     struct buffer_head *bh)
{
 struct ext4_dir_entry_tail *t;

 if (!ext4_has_metadata_csum(inode->i_sb))
  return;

 t = get_dirent_tail(inode, bh);
 if (!t) {
  warn_no_space_for_csum(inode);
  return;
 }

 t->det_checksum = ext4_dirblock_csum(inode, bh->b_data,
          (char *)t - bh->b_data);
}
