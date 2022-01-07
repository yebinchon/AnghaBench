
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int flags; } ;
struct inode {int dummy; } ;


 int NFS_INO_ODIRECT ;
 int clear_bit (int ,int *) ;
 int inode_dio_wait (struct inode*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void nfs_block_o_direct(struct nfs_inode *nfsi, struct inode *inode)
{
 if (test_bit(NFS_INO_ODIRECT, &nfsi->flags)) {
  clear_bit(NFS_INO_ODIRECT, &nfsi->flags);
  inode_dio_wait(inode);
 }
}
