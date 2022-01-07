
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock {int lockres; } ;


 int dlm_print_one_lock_resource (int ) ;

void dlm_print_one_lock(struct dlm_lock *lockid)
{
 dlm_print_one_lock_resource(lockid->lockres);
}
