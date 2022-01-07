
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh_age_excptn_arg {unsigned long now; struct fib6_gc_args* gc_args; } ;
struct fib6_info {int fib6_nh; scalar_t__ nh; } ;
struct fib6_gc_args {int dummy; } ;


 int fib6_nh_age_exceptions (int ,struct fib6_gc_args*,unsigned long) ;
 int nexthop_for_each_fib6_nh (scalar_t__,int ,struct fib6_nh_age_excptn_arg*) ;
 int rt6_nh_age_exceptions ;

void rt6_age_exceptions(struct fib6_info *f6i,
   struct fib6_gc_args *gc_args,
   unsigned long now)
{
 if (f6i->nh) {
  struct fib6_nh_age_excptn_arg arg = {
   .gc_args = gc_args,
   .now = now
  };

  nexthop_for_each_fib6_nh(f6i->nh, rt6_nh_age_exceptions,
      &arg);
 } else {
  fib6_nh_age_exceptions(f6i->fib6_nh, gc_args, now);
 }
}
