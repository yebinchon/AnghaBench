
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {scalar_t__ dlm_state; } ;


 scalar_t__ DLM_CTXT_IN_SHUTDOWN ;
 scalar_t__ DLM_CTXT_JOINED ;
 int dlm_domain_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int dlm_domain_fully_joined(struct dlm_ctxt *dlm)
{
 int ret;

 spin_lock(&dlm_domain_lock);
 ret = (dlm->dlm_state == DLM_CTXT_JOINED) ||
  (dlm->dlm_state == DLM_CTXT_IN_SHUTDOWN);
 spin_unlock(&dlm_domain_lock);

 return ret;
}
