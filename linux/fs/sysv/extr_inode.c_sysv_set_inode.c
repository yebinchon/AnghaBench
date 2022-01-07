
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int i_mode; TYPE_1__* i_mapping; int * i_op; int * i_fop; } ;
typedef int dev_t ;
struct TYPE_2__ {int * a_ops; } ;


 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int init_special_inode (struct inode*,int ,int ) ;
 int inode_nohighmem (struct inode*) ;
 int sysv_aops ;
 int sysv_dir_inode_operations ;
 int sysv_dir_operations ;
 int sysv_file_inode_operations ;
 int sysv_file_operations ;
 int sysv_symlink_inode_operations ;

void sysv_set_inode(struct inode *inode, dev_t rdev)
{
 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &sysv_file_inode_operations;
  inode->i_fop = &sysv_file_operations;
  inode->i_mapping->a_ops = &sysv_aops;
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &sysv_dir_inode_operations;
  inode->i_fop = &sysv_dir_operations;
  inode->i_mapping->a_ops = &sysv_aops;
 } else if (S_ISLNK(inode->i_mode)) {
  inode->i_op = &sysv_symlink_inode_operations;
  inode_nohighmem(inode);
  inode->i_mapping->a_ops = &sysv_aops;
 } else
  init_special_inode(inode, inode->i_mode, rdev);
}
