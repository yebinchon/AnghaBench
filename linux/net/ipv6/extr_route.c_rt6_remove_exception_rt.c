
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rt6_info {int rt6i_flags; int from; } ;
struct fib6_nh_excptn_arg {int plen; struct rt6_info* rt; } ;
struct TYPE_2__ {int plen; } ;
struct fib6_info {TYPE_1__ fib6_src; int fib6_nh; scalar_t__ nh; } ;


 int EINVAL ;
 int ENOENT ;
 int RTF_CACHE ;
 int fib6_nh_remove_exception (int ,int ,struct rt6_info*) ;
 int nexthop_for_each_fib6_nh (scalar_t__,int ,struct fib6_nh_excptn_arg*) ;
 struct fib6_info* rcu_dereference (int ) ;
 int rt6_nh_remove_exception_rt ;

__attribute__((used)) static int rt6_remove_exception_rt(struct rt6_info *rt)
{
 struct fib6_info *from;

 from = rcu_dereference(rt->from);
 if (!from || !(rt->rt6i_flags & RTF_CACHE))
  return -EINVAL;

 if (from->nh) {
  struct fib6_nh_excptn_arg arg = {
   .rt = rt,
   .plen = from->fib6_src.plen
  };
  int rc;


  rc = nexthop_for_each_fib6_nh(from->nh,
           rt6_nh_remove_exception_rt,
           &arg);
  return rc ? 0 : -ENOENT;
 }

 return fib6_nh_remove_exception(from->fib6_nh,
     from->fib6_src.plen, rt);
}
