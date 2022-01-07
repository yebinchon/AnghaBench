
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_lockstatus {int dummy; } ;
struct dlm_lock_resource {int granted; } ;
struct dlm_lock {int dummy; } ;
struct dlm_ctxt {int dummy; } ;
typedef enum dlm_status { ____Placeholder_dlm_status } dlm_status ;


 int DLM_DENIED ;
 int DLM_NORMAL ;
 int DLM_UNLOCK_CALL_AST ;
 int DLM_UNLOCK_FREE_LOCK ;
 int DLM_UNLOCK_REMOVE_LOCK ;
 int dlm_error (int) ;
 int dlm_lock_on_list (int *,struct dlm_lock*) ;

__attribute__((used)) static enum dlm_status dlm_get_unlock_actions(struct dlm_ctxt *dlm,
           struct dlm_lock_resource *res,
           struct dlm_lock *lock,
           struct dlm_lockstatus *lksb,
           int *actions)
{
 enum dlm_status status;


 if (!dlm_lock_on_list(&res->granted, lock)) {
  status = DLM_DENIED;
  dlm_error(status);
  *actions = 0;
 } else {

  status = DLM_NORMAL;
  *actions = (DLM_UNLOCK_FREE_LOCK |
       DLM_UNLOCK_CALL_AST |
       DLM_UNLOCK_REMOVE_LOCK);
 }
 return status;
}
