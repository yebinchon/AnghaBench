
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_state_afinfo {int dummy; } ;


 unsigned int NPROTO ;
 struct xfrm_state_afinfo* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 int * xfrm_state_afinfo ;

struct xfrm_state_afinfo *xfrm_state_get_afinfo(unsigned int family)
{
 struct xfrm_state_afinfo *afinfo;
 if (unlikely(family >= NPROTO))
  return ((void*)0);
 rcu_read_lock();
 afinfo = rcu_dereference(xfrm_state_afinfo[family]);
 if (unlikely(!afinfo))
  rcu_read_unlock();
 return afinfo;
}
