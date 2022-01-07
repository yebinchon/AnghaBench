
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int state; int spinlock; } ;
struct dlm_ctxt {int dummy; } ;


 int DLM_LOCK_RES_DIRTY ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_lockres_is_dirty(struct dlm_ctxt *dlm,
    struct dlm_lock_resource *res)
{
 int ret;
 spin_lock(&res->spinlock);
 ret = !!(res->state & DLM_LOCK_RES_DIRTY);
 spin_unlock(&res->spinlock);
 return ret;
}
