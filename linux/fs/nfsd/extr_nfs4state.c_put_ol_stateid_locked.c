
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int so_id; } ;
struct TYPE_4__ {TYPE_1__ si_opaque; } ;
struct nfs4_stid {TYPE_2__ sc_stateid; int sc_count; struct nfs4_client* sc_client; } ;
struct nfs4_ol_stateid {int st_locks; struct nfs4_stid st_stid; } ;
struct nfs4_client {int cl_stateids; int cl_lock; } ;
struct list_head {int dummy; } ;


 int WARN_ON_ONCE (int) ;
 int close_wq ;
 int idr_remove (int *,int ) ;
 int list_add (int *,struct list_head*) ;
 int list_empty (int *) ;
 int lockdep_assert_held (int *) ;
 int refcount_dec_and_test (int *) ;
 int wake_up_all (int *) ;

__attribute__((used)) static void put_ol_stateid_locked(struct nfs4_ol_stateid *stp,
           struct list_head *reaplist)
{
 struct nfs4_stid *s = &stp->st_stid;
 struct nfs4_client *clp = s->sc_client;

 lockdep_assert_held(&clp->cl_lock);

 WARN_ON_ONCE(!list_empty(&stp->st_locks));

 if (!refcount_dec_and_test(&s->sc_count)) {
  wake_up_all(&close_wq);
  return;
 }

 idr_remove(&clp->cl_stateids, s->sc_stateid.si_opaque.so_id);
 list_add(&stp->st_locks, reaplist);
}
