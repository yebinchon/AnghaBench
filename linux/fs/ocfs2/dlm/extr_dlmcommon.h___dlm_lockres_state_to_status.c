
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lock_resource {int state; int spinlock; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int DLM_FORWARD ;
 int DLM_LOCK_RES_IN_PROGRESS ;
 int DLM_LOCK_RES_MIGRATING ;
 int DLM_LOCK_RES_RECOVERING ;
 int DLM_LOCK_RES_RECOVERY_WAITING ;
 int DLM_MIGRATING ;
 int DLM_NORMAL ;
 int DLM_RECOVERING ;
 int assert_spin_locked (int *) ;

__attribute__((used)) static inline enum dlm_status
__dlm_lockres_state_to_status(struct dlm_lock_resource *res)
{
 enum dlm_status status = DLM_NORMAL;

 assert_spin_locked(&res->spinlock);

 if (res->state & (DLM_LOCK_RES_RECOVERING|
   DLM_LOCK_RES_RECOVERY_WAITING))
  status = DLM_RECOVERING;
 else if (res->state & DLM_LOCK_RES_MIGRATING)
  status = DLM_MIGRATING;
 else if (res->state & DLM_LOCK_RES_IN_PROGRESS)
  status = DLM_FORWARD;

 return status;
}
