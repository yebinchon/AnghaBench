
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int cl_rpc_users; } ;
typedef int __be32 ;


 scalar_t__ atomic_read (int *) ;
 int nfs_ok ;
 int nfserr_jukebox ;
 int unhash_client_locked (struct nfs4_client*) ;

__attribute__((used)) static __be32 mark_client_expired_locked(struct nfs4_client *clp)
{
 if (atomic_read(&clp->cl_rpc_users))
  return nfserr_jukebox;
 unhash_client_locked(clp);
 return nfs_ok;
}
