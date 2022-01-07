
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct inode {char* i_link; int i_sb; int i_mode; int * i_op; TYPE_2__* i_mapping; int i_blocks; int * i_fop; } ;
struct TYPE_5__ {scalar_t__ i_symlink; } ;
struct TYPE_7__ {TYPE_1__ i_u1; } ;
struct TYPE_6__ {int * a_ops; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 TYPE_3__* UFS_I (struct inode*) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int inode_nohighmem (struct inode*) ;
 int page_symlink_inode_operations ;
 int simple_symlink_inode_operations ;
 int ufs_aops ;
 int ufs_dir_inode_operations ;
 int ufs_dir_operations ;
 int ufs_file_inode_operations ;
 int ufs_file_operations ;
 int ufs_get_inode_dev (int ,TYPE_3__*) ;

__attribute__((used)) static void ufs_set_inode_ops(struct inode *inode)
{
 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &ufs_file_inode_operations;
  inode->i_fop = &ufs_file_operations;
  inode->i_mapping->a_ops = &ufs_aops;
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &ufs_dir_inode_operations;
  inode->i_fop = &ufs_dir_operations;
  inode->i_mapping->a_ops = &ufs_aops;
 } else if (S_ISLNK(inode->i_mode)) {
  if (!inode->i_blocks) {
   inode->i_link = (char *)UFS_I(inode)->i_u1.i_symlink;
   inode->i_op = &simple_symlink_inode_operations;
  } else {
   inode->i_mapping->a_ops = &ufs_aops;
   inode->i_op = &page_symlink_inode_operations;
   inode_nohighmem(inode);
  }
 } else
  init_special_inode(inode, inode->i_mode,
       ufs_get_inode_dev(inode->i_sb, UFS_I(inode)));
}
