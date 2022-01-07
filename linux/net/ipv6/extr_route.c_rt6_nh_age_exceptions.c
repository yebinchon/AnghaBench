
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh_age_excptn_arg {int now; int gc_args; } ;
struct fib6_nh {int dummy; } ;


 int fib6_nh_age_exceptions (struct fib6_nh*,int ,int ) ;

__attribute__((used)) static int rt6_nh_age_exceptions(struct fib6_nh *nh, void *_arg)
{
 struct fib6_nh_age_excptn_arg *arg = _arg;

 fib6_nh_age_exceptions(nh, arg->gc_args, arg->now);
 return 0;
}
