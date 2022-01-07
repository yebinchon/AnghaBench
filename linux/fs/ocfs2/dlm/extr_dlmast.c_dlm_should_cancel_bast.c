
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ highest_blocked; scalar_t__ type; } ;
struct dlm_lock {TYPE_1__ ml; int bast_list; scalar_t__ bast_pending; int spinlock; } ;
struct dlm_ctxt {int ast_lock; } ;


 int BUG_ON (int) ;
 scalar_t__ LKM_EXMODE ;
 scalar_t__ LKM_IVMODE ;
 scalar_t__ LKM_NLMODE ;
 int assert_spin_locked (int *) ;
 scalar_t__ list_empty (int *) ;

__attribute__((used)) static int dlm_should_cancel_bast(struct dlm_ctxt *dlm, struct dlm_lock *lock)
{
 assert_spin_locked(&dlm->ast_lock);
 assert_spin_locked(&lock->spinlock);

 if (lock->ml.highest_blocked == LKM_IVMODE)
  return 0;
 BUG_ON(lock->ml.highest_blocked == LKM_NLMODE);

 if (lock->bast_pending &&
     list_empty(&lock->bast_list))

  return 0;

 if (lock->ml.type == LKM_EXMODE)

  return 0;
 else if (lock->ml.type == LKM_NLMODE)

  return 1;
 else if (lock->ml.highest_blocked != LKM_EXMODE)

  return 1;

 return 0;
}
