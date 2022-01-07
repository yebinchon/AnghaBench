
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int spinlock; } ;
struct dlm_ctxt {int dummy; } ;


 int __dlm_lockres_drop_inflight_worker (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void dlm_lockres_drop_inflight_worker(struct dlm_ctxt *dlm,
  struct dlm_lock_resource *res)
{
 spin_lock(&res->spinlock);
 __dlm_lockres_drop_inflight_worker(dlm, res);
 spin_unlock(&res->spinlock);
}
