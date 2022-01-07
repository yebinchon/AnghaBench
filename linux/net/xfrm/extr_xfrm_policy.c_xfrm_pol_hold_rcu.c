
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy {int refcnt; } ;


 int refcount_inc_not_zero (int *) ;

__attribute__((used)) static inline bool xfrm_pol_hold_rcu(struct xfrm_policy *policy)
{
 return refcount_inc_not_zero(&policy->refcnt);
}
