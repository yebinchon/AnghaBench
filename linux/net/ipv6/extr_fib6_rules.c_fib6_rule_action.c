
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowi {int dummy; } ;
struct fib_rule {int dummy; } ;
struct fib_lookup_arg {scalar_t__ lookup_ptr; } ;


 int __fib6_rule_action (struct fib_rule*,struct flowi*,int,struct fib_lookup_arg*) ;
 int fib6_rule_action_alt (struct fib_rule*,struct flowi*,int,struct fib_lookup_arg*) ;
 scalar_t__ fib6_table_lookup ;

__attribute__((used)) static int fib6_rule_action(struct fib_rule *rule, struct flowi *flp,
       int flags, struct fib_lookup_arg *arg)
{
 if (arg->lookup_ptr == fib6_table_lookup)
  return fib6_rule_action_alt(rule, flp, flags, arg);

 return __fib6_rule_action(rule, flp, flags, arg);
}
