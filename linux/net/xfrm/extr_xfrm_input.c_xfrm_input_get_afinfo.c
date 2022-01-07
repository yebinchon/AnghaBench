
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xfrm_input_afinfo {int dummy; } ;


 unsigned int ARRAY_SIZE (int *) ;
 scalar_t__ WARN_ON_ONCE (int) ;
 struct xfrm_input_afinfo* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 scalar_t__ unlikely (int) ;
 int * xfrm_input_afinfo ;

__attribute__((used)) static const struct xfrm_input_afinfo *xfrm_input_get_afinfo(unsigned int family)
{
 const struct xfrm_input_afinfo *afinfo;

 if (WARN_ON_ONCE(family >= ARRAY_SIZE(xfrm_input_afinfo)))
  return ((void*)0);

 rcu_read_lock();
 afinfo = rcu_dereference(xfrm_input_afinfo[family]);
 if (unlikely(!afinfo))
  rcu_read_unlock();
 return afinfo;
}
