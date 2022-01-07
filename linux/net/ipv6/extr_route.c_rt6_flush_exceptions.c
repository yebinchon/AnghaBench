
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_info {int fib6_nh; scalar_t__ nh; } ;


 int fib6_nh_flush_exceptions (int ,struct fib6_info*) ;
 int nexthop_for_each_fib6_nh (scalar_t__,int ,struct fib6_info*) ;
 int rt6_nh_flush_exceptions ;

void rt6_flush_exceptions(struct fib6_info *f6i)
{
 if (f6i->nh)
  nexthop_for_each_fib6_nh(f6i->nh, rt6_nh_flush_exceptions,
      f6i);
 else
  fib6_nh_flush_exceptions(f6i->fib6_nh, f6i);
}
