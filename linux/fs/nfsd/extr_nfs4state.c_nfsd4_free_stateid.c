
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nfsd4_free_stateid {int fr_stateid; } ;
union nfsd4_op_u {struct nfsd4_free_stateid free_stateid; } ;
struct svc_rqst {int dummy; } ;
struct nfsd4_compound_state {TYPE_1__* session; } ;
struct nfs4_stid {int sc_type; int sc_lock; int sc_count; int sc_stateid; } ;
struct nfs4_delegation {int dl_recall_lru; } ;
struct nfs4_client {int cl_lock; } ;
typedef int stateid_t ;
typedef int __be32 ;
struct TYPE_2__ {struct nfs4_client* se_client; } ;






 int check_stateid_generation (int *,int *,int) ;
 struct nfs4_delegation* delegstateid (struct nfs4_stid*) ;
 struct nfs4_stid* find_stateid_locked (struct nfs4_client*,int *) ;
 int list_del_init (int *) ;
 int nfs4_put_stid (struct nfs4_stid*) ;
 int nfs_ok ;
 int nfsd4_free_lock_stateid (int *,struct nfs4_stid*) ;
 int nfserr_bad_stateid ;
 int nfserr_locks_held ;
 int refcount_inc (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__be32
nfsd4_free_stateid(struct svc_rqst *rqstp, struct nfsd4_compound_state *cstate,
     union nfsd4_op_u *u)
{
 struct nfsd4_free_stateid *free_stateid = &u->free_stateid;
 stateid_t *stateid = &free_stateid->fr_stateid;
 struct nfs4_stid *s;
 struct nfs4_delegation *dp;
 struct nfs4_client *cl = cstate->session->se_client;
 __be32 ret = nfserr_bad_stateid;

 spin_lock(&cl->cl_lock);
 s = find_stateid_locked(cl, stateid);
 if (!s)
  goto out_unlock;
 spin_lock(&s->sc_lock);
 switch (s->sc_type) {
 case 131:
  ret = nfserr_locks_held;
  break;
 case 129:
  ret = check_stateid_generation(stateid, &s->sc_stateid, 1);
  if (ret)
   break;
  ret = nfserr_locks_held;
  break;
 case 130:
  spin_unlock(&s->sc_lock);
  refcount_inc(&s->sc_count);
  spin_unlock(&cl->cl_lock);
  ret = nfsd4_free_lock_stateid(stateid, s);
  goto out;
 case 128:
  spin_unlock(&s->sc_lock);
  dp = delegstateid(s);
  list_del_init(&dp->dl_recall_lru);
  spin_unlock(&cl->cl_lock);
  nfs4_put_stid(s);
  ret = nfs_ok;
  goto out;

 }
 spin_unlock(&s->sc_lock);
out_unlock:
 spin_unlock(&cl->cl_lock);
out:
 return ret;
}
