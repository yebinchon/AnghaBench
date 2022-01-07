
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_net {int client_lock; } ;
struct nfsd4_compound_state {struct nfs4_client* clp; int session; } ;
struct nfs4_client {int cl_rpc_users; int cl_clientid; } ;
typedef int clientid_t ;
typedef int __be32 ;


 scalar_t__ STALE_CLIENTID (int *,struct nfsd_net*) ;
 int WARN_ON_ONCE (int ) ;
 int atomic_inc (int *) ;
 struct nfs4_client* find_confirmed_client (int *,int,struct nfsd_net*) ;
 int nfs_ok ;
 int nfserr_expired ;
 int nfserr_stale_clientid ;
 int same_clid (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __be32 lookup_clientid(clientid_t *clid,
  struct nfsd4_compound_state *cstate,
  struct nfsd_net *nn)
{
 struct nfs4_client *found;

 if (cstate->clp) {
  found = cstate->clp;
  if (!same_clid(&found->cl_clientid, clid))
   return nfserr_stale_clientid;
  return nfs_ok;
 }

 if (STALE_CLIENTID(clid, nn))
  return nfserr_stale_clientid;






 WARN_ON_ONCE(cstate->session);
 spin_lock(&nn->client_lock);
 found = find_confirmed_client(clid, 0, nn);
 if (!found) {
  spin_unlock(&nn->client_lock);
  return nfserr_expired;
 }
 atomic_inc(&found->cl_rpc_users);
 spin_unlock(&nn->client_lock);


 cstate->clp = found;
 return nfs_ok;
}
