
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rules_ops; } ;
struct net {TYPE_1__ ipv4; } ;
struct flowi4 {int dummy; } ;
struct fib_result {int tclassid; } ;
struct fib_lookup_arg {unsigned int flags; scalar_t__ rule; struct fib_result* result; } ;
struct fib4_rule {int tclassid; } ;


 int ENETUNREACH ;
 int ESRCH ;
 int fib_rules_lookup (int ,int ,int ,struct fib_lookup_arg*) ;
 int flowi4_to_flowi (struct flowi4*) ;
 int l3mdev_update_flow (struct net*,int ) ;

int __fib_lookup(struct net *net, struct flowi4 *flp,
   struct fib_result *res, unsigned int flags)
{
 struct fib_lookup_arg arg = {
  .result = res,
  .flags = flags,
 };
 int err;


 l3mdev_update_flow(net, flowi4_to_flowi(flp));

 err = fib_rules_lookup(net->ipv4.rules_ops, flowi4_to_flowi(flp), 0, &arg);







 if (err == -ESRCH)
  err = -ENETUNREACH;

 return err;
}
