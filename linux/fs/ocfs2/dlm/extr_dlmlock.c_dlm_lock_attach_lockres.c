
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int dummy; } ;
struct dlm_lock {struct dlm_lock_resource* lockres; } ;


 int dlm_lockres_get (struct dlm_lock_resource*) ;

void dlm_lock_attach_lockres(struct dlm_lock *lock,
        struct dlm_lock_resource *res)
{
 dlm_lockres_get(res);
 lock->lockres = res;
}
