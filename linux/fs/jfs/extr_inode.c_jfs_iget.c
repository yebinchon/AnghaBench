
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct inode {int i_state; size_t i_size; char* i_link; int i_rdev; int i_mode; int * i_op; TYPE_1__* i_mapping; int * i_fop; } ;
struct TYPE_4__ {char* i_inline; } ;
struct TYPE_3__ {int * a_ops; } ;


 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 size_t IDATASIZE ;
 int I_NEW ;
 TYPE_2__* JFS_IP (struct inode*) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int diRead (struct inode*) ;
 int iget_failed (struct inode*) ;
 struct inode* iget_locked (struct super_block*,unsigned long) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int inode_nohighmem (struct inode*) ;
 int jfs_aops ;
 int jfs_dir_inode_operations ;
 int jfs_dir_operations ;
 int jfs_fast_symlink_inode_operations ;
 int jfs_file_inode_operations ;
 int jfs_file_operations ;
 int page_symlink_inode_operations ;
 int unlock_new_inode (struct inode*) ;

struct inode *jfs_iget(struct super_block *sb, unsigned long ino)
{
 struct inode *inode;
 int ret;

 inode = iget_locked(sb, ino);
 if (!inode)
  return ERR_PTR(-ENOMEM);
 if (!(inode->i_state & I_NEW))
  return inode;

 ret = diRead(inode);
 if (ret < 0) {
  iget_failed(inode);
  return ERR_PTR(ret);
 }

 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &jfs_file_inode_operations;
  inode->i_fop = &jfs_file_operations;
  inode->i_mapping->a_ops = &jfs_aops;
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &jfs_dir_inode_operations;
  inode->i_fop = &jfs_dir_operations;
 } else if (S_ISLNK(inode->i_mode)) {
  if (inode->i_size >= IDATASIZE) {
   inode->i_op = &page_symlink_inode_operations;
   inode_nohighmem(inode);
   inode->i_mapping->a_ops = &jfs_aops;
  } else {
   inode->i_op = &jfs_fast_symlink_inode_operations;
   inode->i_link = JFS_IP(inode)->i_inline;




   inode->i_link[inode->i_size] = '\0';
  }
 } else {
  inode->i_op = &jfs_file_inode_operations;
  init_special_inode(inode, inode->i_mode, inode->i_rdev);
 }
 unlock_new_inode(inode);
 return inode;
}
