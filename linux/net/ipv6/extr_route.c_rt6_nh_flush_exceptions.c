
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh {int dummy; } ;
struct fib6_info {int dummy; } ;


 int fib6_nh_flush_exceptions (struct fib6_nh*,struct fib6_info*) ;

__attribute__((used)) static int rt6_nh_flush_exceptions(struct fib6_nh *nh, void *arg)
{
 struct fib6_info *f6i = arg;

 fib6_nh_flush_exceptions(nh, f6i);

 return 0;
}
