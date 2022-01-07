
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int fi_rcu; int fi_delegations; int fi_clnt_odstate; int fi_hash; int fi_ref; } ;


 int WARN_ON_ONCE (int) ;
 int call_rcu (int *,int ) ;
 int hlist_del_rcu (int *) ;
 int list_empty (int *) ;
 int might_lock (int *) ;
 int nfsd4_free_file_rcu ;
 scalar_t__ refcount_dec_and_lock (int *,int *) ;
 int spin_unlock (int *) ;
 int state_lock ;

void
put_nfs4_file(struct nfs4_file *fi)
{
 might_lock(&state_lock);

 if (refcount_dec_and_lock(&fi->fi_ref, &state_lock)) {
  hlist_del_rcu(&fi->fi_hash);
  spin_unlock(&state_lock);
  WARN_ON_ONCE(!list_empty(&fi->fi_clnt_odstate));
  WARN_ON_ONCE(!list_empty(&fi->fi_delegations));
  call_rcu(&fi->fi_rcu, nfsd4_free_file_rcu);
 }
}
