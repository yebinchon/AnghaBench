
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct TYPE_4__ {int cookie; } ;
struct dlm_lock {int bast_pending; int spinlock; int bast_list; TYPE_2__ ml; struct dlm_lock_resource* lockres; } ;
struct dlm_ctxt {int pending_basts; int name; int ast_lock; } ;


 int BUG_ON (int) ;
 int assert_spin_locked (int *) ;
 int be64_to_cpu (int ) ;
 int dlm_get_lock_cookie_node (int ) ;
 int dlm_get_lock_cookie_seq (int ) ;
 int dlm_lock_get (struct dlm_lock*) ;
 int list_add_tail (int *,int *) ;
 int list_empty (int *) ;
 int mlog (int ,char*,int ,int ,int ,int ,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __dlm_queue_bast(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
 struct dlm_lock_resource *res;

 BUG_ON(!dlm);
 BUG_ON(!lock);

 assert_spin_locked(&dlm->ast_lock);

 res = lock->lockres;

 BUG_ON(!list_empty(&lock->bast_list));
 if (lock->bast_pending)
  mlog(0, "%s: res %.*s, lock %u:%llu, BAST getting flushed\n",
       dlm->name, res->lockname.len, res->lockname.name,
       dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
       dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)));


 dlm_lock_get(lock);
 spin_lock(&lock->spinlock);
 list_add_tail(&lock->bast_list, &dlm->pending_basts);
 lock->bast_pending = 1;
 spin_unlock(&lock->spinlock);
}
