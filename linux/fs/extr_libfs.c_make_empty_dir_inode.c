
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_mode; int * i_fop; int i_opflags; int * i_op; scalar_t__ i_blocks; int i_blkbits; scalar_t__ i_size; scalar_t__ i_rdev; int i_gid; int i_uid; } ;


 int GLOBAL_ROOT_GID ;
 int GLOBAL_ROOT_UID ;
 int IOP_XATTR ;
 int PAGE_SHIFT ;
 int S_IFDIR ;
 int S_IRUGO ;
 int S_IXUGO ;
 int empty_dir_inode_operations ;
 int empty_dir_operations ;
 int set_nlink (struct inode*,int) ;

void make_empty_dir_inode(struct inode *inode)
{
 set_nlink(inode, 2);
 inode->i_mode = S_IFDIR | S_IRUGO | S_IXUGO;
 inode->i_uid = GLOBAL_ROOT_UID;
 inode->i_gid = GLOBAL_ROOT_GID;
 inode->i_rdev = 0;
 inode->i_size = 0;
 inode->i_blkbits = PAGE_SHIFT;
 inode->i_blocks = 0;

 inode->i_op = &empty_dir_inode_operations;
 inode->i_opflags &= ~IOP_XATTR;
 inode->i_fop = &empty_dir_operations;
}
