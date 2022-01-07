
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_file {int fi_had_conflict; int fi_hash; int fi_lo_recalls; int fi_lo_states; int fi_access; int fi_fds; scalar_t__ fi_share_deny; int * fi_deleg_file; int fi_fhandle; int fi_clnt_odstate; int fi_delegations; int fi_stateids; int fi_lock; int fi_ref; } ;
struct knfsd_fh {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 int atomic_set (int *,int ) ;
 int fh_copy_shallow (int *,struct knfsd_fh*) ;
 int * file_hashtbl ;
 int hlist_add_head_rcu (int *,int *) ;
 int lockdep_assert_held (int *) ;
 int memset (int ,int ,int) ;
 int refcount_set (int *,int) ;
 int spin_lock_init (int *) ;
 int state_lock ;

__attribute__((used)) static void nfsd4_init_file(struct knfsd_fh *fh, unsigned int hashval,
    struct nfs4_file *fp)
{
 lockdep_assert_held(&state_lock);

 refcount_set(&fp->fi_ref, 1);
 spin_lock_init(&fp->fi_lock);
 INIT_LIST_HEAD(&fp->fi_stateids);
 INIT_LIST_HEAD(&fp->fi_delegations);
 INIT_LIST_HEAD(&fp->fi_clnt_odstate);
 fh_copy_shallow(&fp->fi_fhandle, fh);
 fp->fi_deleg_file = ((void*)0);
 fp->fi_had_conflict = 0;
 fp->fi_share_deny = 0;
 memset(fp->fi_fds, 0, sizeof(fp->fi_fds));
 memset(fp->fi_access, 0, sizeof(fp->fi_access));




 hlist_add_head_rcu(&fp->fi_hash, &file_hashtbl[hashval]);
}
