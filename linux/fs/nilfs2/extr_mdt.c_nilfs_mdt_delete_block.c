
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nilfs_inode_info {int i_bmap; } ;
struct inode {int dummy; } ;


 int ENOENT ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int nilfs_bmap_delete (int ,unsigned long) ;
 int nilfs_mdt_forget_block (struct inode*,unsigned long) ;
 int nilfs_mdt_mark_dirty (struct inode*) ;

int nilfs_mdt_delete_block(struct inode *inode, unsigned long block)
{
 struct nilfs_inode_info *ii = NILFS_I(inode);
 int err;

 err = nilfs_bmap_delete(ii->i_bmap, block);
 if (!err || err == -ENOENT) {
  nilfs_mdt_mark_dirty(inode);
  nilfs_mdt_forget_block(inode, block);
 }
 return err;
}
