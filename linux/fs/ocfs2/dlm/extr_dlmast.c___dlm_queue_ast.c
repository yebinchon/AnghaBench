
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int name; int len; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct TYPE_4__ {int highest_blocked; int cookie; int type; } ;
struct dlm_lock {int ast_pending; int spinlock; int ast_list; TYPE_2__ ml; int bast_list; scalar_t__ bast_pending; struct dlm_lock_resource* lockres; } ;
struct dlm_ctxt {int pending_asts; int name; int ast_lock; } ;


 int BUG () ;
 int BUG_ON (int) ;
 int LKM_IVMODE ;
 int ML_ERROR ;
 int assert_spin_locked (int *) ;
 int be64_to_cpu (int ) ;
 int dlm_get_lock_cookie_node (int ) ;
 int dlm_get_lock_cookie_seq (int ) ;
 int dlm_lock_get (struct dlm_lock*) ;
 int dlm_lock_put (struct dlm_lock*) ;
 int dlm_lockres_release_ast (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 scalar_t__ dlm_should_cancel_bast (struct dlm_ctxt*,struct dlm_lock*) ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int mlog (int ,char*,int ,int ,int ,int ,int ,...) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void __dlm_queue_ast(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
 struct dlm_lock_resource *res;

 BUG_ON(!dlm);
 BUG_ON(!lock);

 res = lock->lockres;

 assert_spin_locked(&dlm->ast_lock);

 if (!list_empty(&lock->ast_list)) {
  mlog(ML_ERROR, "%s: res %.*s, lock %u:%llu, "
       "AST list not empty, pending %d, newlevel %d\n",
       dlm->name, res->lockname.len, res->lockname.name,
       dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
       dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)),
       lock->ast_pending, lock->ml.type);
  BUG();
 }
 if (lock->ast_pending)
  mlog(0, "%s: res %.*s, lock %u:%llu, AST getting flushed\n",
       dlm->name, res->lockname.len, res->lockname.name,
       dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
       dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)));


 dlm_lock_get(lock);
 spin_lock(&lock->spinlock);


 if (dlm_should_cancel_bast(dlm, lock)) {
  mlog(0, "%s: res %.*s, lock %u:%llu, Cancelling BAST\n",
       dlm->name, res->lockname.len, res->lockname.name,
       dlm_get_lock_cookie_node(be64_to_cpu(lock->ml.cookie)),
       dlm_get_lock_cookie_seq(be64_to_cpu(lock->ml.cookie)));
  lock->bast_pending = 0;
  list_del_init(&lock->bast_list);
  lock->ml.highest_blocked = LKM_IVMODE;



  dlm_lock_put(lock);





  dlm_lockres_release_ast(dlm, res);
 }
 list_add_tail(&lock->ast_list, &dlm->pending_asts);
 lock->ast_pending = 1;
 spin_unlock(&lock->spinlock);
}
