
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_session {struct nfs4_client* se_client; } ;
struct nfsd4_conn {int cn_xpt_user; int cn_xprt; } ;
struct nfs4_client {int cl_lock; scalar_t__ cl_mach_cred; } ;
typedef int __be32 ;


 struct nfsd4_conn* __nfsd4_find_conn (int ,struct nfsd4_session*) ;
 int __nfsd4_hash_conn (struct nfsd4_conn*,struct nfsd4_session*) ;
 int free_conn (struct nfsd4_conn*) ;
 int nfs_ok ;
 int nfsd4_conn_lost (int *) ;
 int nfsd4_register_conn (struct nfsd4_conn*) ;
 int nfserr_conn_not_bound_to_session ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static __be32 nfsd4_sequence_check_conn(struct nfsd4_conn *new, struct nfsd4_session *ses)
{
 struct nfs4_client *clp = ses->se_client;
 struct nfsd4_conn *c;
 __be32 status = nfs_ok;
 int ret;

 spin_lock(&clp->cl_lock);
 c = __nfsd4_find_conn(new->cn_xprt, ses);
 if (c)
  goto out_free;
 status = nfserr_conn_not_bound_to_session;
 if (clp->cl_mach_cred)
  goto out_free;
 __nfsd4_hash_conn(new, ses);
 spin_unlock(&clp->cl_lock);
 ret = nfsd4_register_conn(new);
 if (ret)

  nfsd4_conn_lost(&new->cn_xpt_user);
 return nfs_ok;
out_free:
 spin_unlock(&clp->cl_lock);
 free_conn(new);
 return status;
}
