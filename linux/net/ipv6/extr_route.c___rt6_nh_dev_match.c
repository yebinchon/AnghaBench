
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib6_nh_dm_arg {int flags; int oif; int saddr; int net; struct fib6_nh* nh; } ;
struct fib6_nh {int dummy; } ;


 int __rt6_device_match (int ,struct fib6_nh*,int ,int ,int ) ;

__attribute__((used)) static int __rt6_nh_dev_match(struct fib6_nh *nh, void *_arg)
{
 struct fib6_nh_dm_arg *arg = _arg;

 arg->nh = nh;
 return __rt6_device_match(arg->net, nh, arg->saddr, arg->oif,
      arg->flags);
}
