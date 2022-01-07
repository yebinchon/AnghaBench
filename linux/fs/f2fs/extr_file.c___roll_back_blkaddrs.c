
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {int dummy; } ;
typedef scalar_t__ pgoff_t ;
typedef int block_t ;


 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int LOOKUP_NODE_RA ;
 int dec_valid_block_count (struct f2fs_sb_info*,struct inode*,int) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,scalar_t__,int ) ;
 int f2fs_invalidate_blocks (struct f2fs_sb_info*,int ) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_update_data_blkaddr (struct dnode_of_data*,int ) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;

__attribute__((used)) static int __roll_back_blkaddrs(struct inode *inode, block_t *blkaddr,
    int *do_replace, pgoff_t off, int len)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct dnode_of_data dn;
 int ret, i;

 for (i = 0; i < len; i++, do_replace++, blkaddr++) {
  if (*do_replace == 0)
   continue;

  set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
  ret = f2fs_get_dnode_of_data(&dn, off + i, LOOKUP_NODE_RA);
  if (ret) {
   dec_valid_block_count(sbi, inode, 1);
   f2fs_invalidate_blocks(sbi, *blkaddr);
  } else {
   f2fs_update_data_blkaddr(&dn, *blkaddr);
  }
  f2fs_put_dnode(&dn);
 }
 return 0;
}
