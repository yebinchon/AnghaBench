
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int flags; } ;
struct inode {int i_mapping; } ;


 int NFS_INO_ODIRECT ;
 int nfs_sync_mapping (int ) ;
 int set_bit (int ,int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void nfs_block_buffered(struct nfs_inode *nfsi, struct inode *inode)
{
 if (!test_bit(NFS_INO_ODIRECT, &nfsi->flags)) {
  set_bit(NFS_INO_ODIRECT, &nfsi->flags);
  nfs_sync_mapping(inode->i_mapping);
 }
}
