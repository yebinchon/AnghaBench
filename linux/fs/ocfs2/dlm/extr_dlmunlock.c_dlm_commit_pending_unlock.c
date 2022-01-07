
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int dummy; } ;
struct dlm_lock {int list; } ;


 int list_del_init (int *) ;

void dlm_commit_pending_unlock(struct dlm_lock_resource *res,
          struct dlm_lock *lock)
{


 list_del_init(&lock->list);
}
