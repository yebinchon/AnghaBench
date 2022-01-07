
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct f2fs_sb_info {int dummy; } ;
struct dnode_of_data {scalar_t__ max_level; int ofs_in_node; int node_page; int inode; } ;
typedef int pgoff_t ;
typedef int block_t ;


 scalar_t__ ADDRS_PER_BLOCK (struct inode*) ;
 scalar_t__ ADDRS_PER_PAGE (int ,struct inode*) ;
 int DATA_GENERIC_ENHANCE ;
 int EFSCORRUPTED ;
 int ENOENT ;
 int EOPNOTSUPP ;
 struct f2fs_sb_info* F2FS_I_SB (struct inode*) ;
 int LFS ;
 int LOOKUP_NODE_RA ;
 int NULL_ADDR ;
 scalar_t__ __is_valid_data_blkaddr (int ) ;
 int datablock_addr (int ,int ,int) ;
 int f2fs_get_dnode_of_data (struct dnode_of_data*,int,int ) ;
 int f2fs_is_checkpointed_data (struct f2fs_sb_info*,int ) ;
 int f2fs_is_valid_blkaddr (struct f2fs_sb_info*,int ,int ) ;
 int f2fs_put_dnode (struct dnode_of_data*) ;
 int f2fs_update_data_blkaddr (struct dnode_of_data*,int ) ;
 int min (int,int) ;
 int set_new_dnode (struct dnode_of_data*,struct inode*,int *,int *,int ) ;
 scalar_t__ test_opt (struct f2fs_sb_info*,int ) ;

__attribute__((used)) static int __read_out_blkaddrs(struct inode *inode, block_t *blkaddr,
    int *do_replace, pgoff_t off, pgoff_t len)
{
 struct f2fs_sb_info *sbi = F2FS_I_SB(inode);
 struct dnode_of_data dn;
 int ret, done, i;

next_dnode:
 set_new_dnode(&dn, inode, ((void*)0), ((void*)0), 0);
 ret = f2fs_get_dnode_of_data(&dn, off, LOOKUP_NODE_RA);
 if (ret && ret != -ENOENT) {
  return ret;
 } else if (ret == -ENOENT) {
  if (dn.max_level == 0)
   return -ENOENT;
  done = min((pgoff_t)ADDRS_PER_BLOCK(inode) - dn.ofs_in_node,
         len);
  blkaddr += done;
  do_replace += done;
  goto next;
 }

 done = min((pgoff_t)ADDRS_PER_PAGE(dn.node_page, inode) -
       dn.ofs_in_node, len);
 for (i = 0; i < done; i++, blkaddr++, do_replace++, dn.ofs_in_node++) {
  *blkaddr = datablock_addr(dn.inode,
     dn.node_page, dn.ofs_in_node);

  if (__is_valid_data_blkaddr(*blkaddr) &&
   !f2fs_is_valid_blkaddr(sbi, *blkaddr,
     DATA_GENERIC_ENHANCE)) {
   f2fs_put_dnode(&dn);
   return -EFSCORRUPTED;
  }

  if (!f2fs_is_checkpointed_data(sbi, *blkaddr)) {

   if (test_opt(sbi, LFS)) {
    f2fs_put_dnode(&dn);
    return -EOPNOTSUPP;
   }


   f2fs_update_data_blkaddr(&dn, NULL_ADDR);
   *do_replace = 1;
  }
 }
 f2fs_put_dnode(&dn);
next:
 len -= done;
 off += done;
 if (len)
  goto next_dnode;
 return 0;
}
