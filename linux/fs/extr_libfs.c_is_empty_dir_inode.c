
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_op; int * i_fop; } ;


 int empty_dir_inode_operations ;
 int empty_dir_operations ;

bool is_empty_dir_inode(struct inode *inode)
{
 return (inode->i_fop == &empty_dir_operations) &&
  (inode->i_op == &empty_dir_inode_operations);
}
