
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh_pcpu_arg {int table; int from; } ;
struct fib6_nh {int dummy; } ;


 int __fib6_drop_pcpu_from (struct fib6_nh*,int ,int ) ;

__attribute__((used)) static int fib6_nh_drop_pcpu_from(struct fib6_nh *nh, void *_arg)
{
 struct fib6_nh_pcpu_arg *arg = _arg;

 __fib6_drop_pcpu_from(nh, arg->from, arg->table);
 return 0;
}
