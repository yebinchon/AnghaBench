
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int v; int m; } ;
struct xfrm_policy {scalar_t__ priority; TYPE_1__ mark; } ;



__attribute__((used)) static bool xfrm_policy_mark_match(struct xfrm_policy *policy,
       struct xfrm_policy *pol)
{
 u32 mark = policy->mark.v & policy->mark.m;

 if (policy->mark.v == pol->mark.v && policy->mark.m == pol->mark.m)
  return 1;

 if ((mark & pol->mark.m) == pol->mark.v &&
     policy->priority == pol->priority)
  return 1;

 return 0;
}
