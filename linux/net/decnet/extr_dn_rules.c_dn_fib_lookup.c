
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowidn {int dummy; } ;
struct fib_lookup_arg {int rule; struct dn_fib_res* result; } ;
struct dn_fib_res {int r; } ;


 int dn_fib_rules_ops ;
 int fib_rules_lookup (int ,int ,int ,struct fib_lookup_arg*) ;
 int flowidn_to_flowi (struct flowidn*) ;

int dn_fib_lookup(struct flowidn *flp, struct dn_fib_res *res)
{
 struct fib_lookup_arg arg = {
  .result = res,
 };
 int err;

 err = fib_rules_lookup(dn_fib_rules_ops,
          flowidn_to_flowi(flp), 0, &arg);
 res->r = arg.rule;

 return err;
}
