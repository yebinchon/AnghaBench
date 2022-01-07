
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {int dummy; } ;


 unsigned int NPROTO ;
 struct xfrm_state_afinfo* rcu_dereference (int ) ;
 scalar_t__ unlikely (int) ;
 int * xfrm_state_afinfo ;

struct xfrm_state_afinfo *xfrm_state_afinfo_get_rcu(unsigned int family)
{
 if (unlikely(family >= NPROTO))
  return ((void*)0);

 return rcu_dereference(xfrm_state_afinfo[family]);
}
