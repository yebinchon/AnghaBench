
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {scalar_t__ dlm_state; } ;


 scalar_t__ DLM_CTXT_JOINED ;
 struct dlm_ctxt* __dlm_lookup_domain (char const*) ;
 int dlm_domain_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int dlm_wait_on_domain_helper(const char *domain)
{
 int ret = 0;
 struct dlm_ctxt *tmp = ((void*)0);

 spin_lock(&dlm_domain_lock);

 tmp = __dlm_lookup_domain(domain);
 if (!tmp)
  ret = 1;
 else if (tmp->dlm_state == DLM_CTXT_JOINED)
  ret = 1;

 spin_unlock(&dlm_domain_lock);
 return ret;
}
