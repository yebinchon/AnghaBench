
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_policy_afinfo {int dummy; } ;


 unsigned short ARRAY_SIZE (int *) ;
 struct xfrm_policy_afinfo* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 int * xfrm_policy_afinfo ;

__attribute__((used)) static const struct xfrm_policy_afinfo *xfrm_policy_get_afinfo(unsigned short family)
{
 const struct xfrm_policy_afinfo *afinfo;

 if (unlikely(family >= ARRAY_SIZE(xfrm_policy_afinfo)))
  return ((void*)0);
 rcu_read_lock();
 afinfo = rcu_dereference(xfrm_policy_afinfo[family]);
 if (unlikely(!afinfo))
  rcu_read_unlock();
 return afinfo;
}
