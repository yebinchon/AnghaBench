
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int flags; } ;
struct inode {int i_rwsem; } ;


 struct nfs_inode* NFS_I (struct inode*) ;
 int NFS_INO_ODIRECT ;
 int down_read (int *) ;
 int down_write (int *) ;
 int downgrade_write (int *) ;
 int nfs_block_o_direct (struct nfs_inode*,struct inode*) ;
 scalar_t__ test_bit (int ,int *) ;
 int up_read (int *) ;

void
nfs_start_io_read(struct inode *inode)
{
 struct nfs_inode *nfsi = NFS_I(inode);

 down_read(&inode->i_rwsem);
 if (test_bit(NFS_INO_ODIRECT, &nfsi->flags) == 0)
  return;
 up_read(&inode->i_rwsem);

 down_write(&inode->i_rwsem);
 nfs_block_o_direct(nfsi, inode);
 downgrade_write(&inode->i_rwsem);
}
