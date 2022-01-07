
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rwsem; } ;


 int NFS_I (struct inode*) ;
 int down_write (int *) ;
 int nfs_block_o_direct (int ,struct inode*) ;

void
nfs_start_io_write(struct inode *inode)
{
 down_write(&inode->i_rwsem);
 nfs_block_o_direct(NFS_I(inode), inode);
}
