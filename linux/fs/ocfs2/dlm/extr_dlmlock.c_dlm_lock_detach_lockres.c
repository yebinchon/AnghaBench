
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int dummy; } ;
struct dlm_lock {struct dlm_lock_resource* lockres; } ;


 int dlm_lockres_put (struct dlm_lock_resource*) ;
 int mlog (int ,char*) ;

__attribute__((used)) static void dlm_lock_detach_lockres(struct dlm_lock *lock)
{
 struct dlm_lock_resource *res;

 res = lock->lockres;
 if (res) {
  lock->lockres = ((void*)0);
  mlog(0, "removing lock's lockres reference\n");
  dlm_lockres_put(res);
 }
}
