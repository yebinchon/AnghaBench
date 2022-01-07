
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int spinlock; } ;
struct dlm_ctxt {int dummy; } ;


 int __dlm_lockres_grab_inflight_ref (struct dlm_ctxt*,struct dlm_lock_resource*) ;
 int assert_spin_locked (int *) ;

void dlm_lockres_grab_inflight_ref(struct dlm_ctxt *dlm,
       struct dlm_lock_resource *res)
{
 assert_spin_locked(&res->spinlock);
 __dlm_lockres_grab_inflight_ref(dlm, res);
}
