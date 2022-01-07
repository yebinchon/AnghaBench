
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_lock_resource {int granted; } ;
struct TYPE_2__ {int convert_type; } ;
struct dlm_lock {TYPE_1__ ml; int list; } ;


 int LKM_IVMODE ;
 int list_move_tail (int *,int *) ;

void dlm_commit_pending_cancel(struct dlm_lock_resource *res,
          struct dlm_lock *lock)
{
 list_move_tail(&lock->list, &res->granted);
 lock->ml.convert_type = LKM_IVMODE;
}
