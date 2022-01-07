
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs_inode {int cache_validity; int flags; } ;


 int NFS_INO_INVALIDATING ;
 int NFS_INO_INVALID_ATTR ;
 int NFS_INO_INVALID_DATA ;
 int smp_rmb () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static bool
nfs_readdir_inode_mapping_valid(struct nfs_inode *nfsi)
{
 if (nfsi->cache_validity & (NFS_INO_INVALID_ATTR|NFS_INO_INVALID_DATA))
  return 0;
 smp_rmb();
 return !test_bit(NFS_INO_INVALIDATING, &nfsi->flags);
}
