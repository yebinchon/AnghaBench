
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int * i_op; } ;


 int bad_inode_ops ;

bool is_bad_inode(struct inode *inode)
{
 return (inode->i_op == &bad_inode_ops);
}
