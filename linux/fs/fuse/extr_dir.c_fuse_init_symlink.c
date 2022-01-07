
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * a_ops; } ;
struct inode {TYPE_1__ i_data; int * i_op; } ;


 int fuse_symlink_aops ;
 int fuse_symlink_inode_operations ;
 int inode_nohighmem (struct inode*) ;

void fuse_init_symlink(struct inode *inode)
{
 inode->i_op = &fuse_symlink_inode_operations;
 inode->i_data.a_ops = &fuse_symlink_aops;
 inode_nohighmem(inode);
}
