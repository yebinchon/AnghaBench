
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_ctxt {int dummy; } ;


 struct dlm_ctxt* __dlm_lookup_domain_full (char const*,int ) ;
 int assert_spin_locked (int *) ;
 int dlm_domain_lock ;
 int strlen (char const*) ;

__attribute__((used)) static struct dlm_ctxt * __dlm_lookup_domain(const char *domain)
{
 assert_spin_locked(&dlm_domain_lock);

 return __dlm_lookup_domain_full(domain, strlen(domain));
}
