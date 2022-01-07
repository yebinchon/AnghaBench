
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh_excptn_arg {int rt; int plen; } ;
struct fib6_nh {int dummy; } ;


 int fib6_nh_remove_exception (struct fib6_nh*,int ,int ) ;

__attribute__((used)) static int rt6_nh_remove_exception_rt(struct fib6_nh *nh, void *_arg)
{
 struct fib6_nh_excptn_arg *arg = _arg;
 int err;

 err = fib6_nh_remove_exception(nh, arg->plen, arg->rt);
 if (err == 0)
  return 1;

 return 0;
}
