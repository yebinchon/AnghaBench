
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_rules_ops {int dummy; } ;


 int RT_TABLE_DEFAULT ;
 int RT_TABLE_LOCAL ;
 int RT_TABLE_MAIN ;
 int fib_default_rule_add (struct fib_rules_ops*,int,int ,int ) ;

__attribute__((used)) static int fib_default_rules_init(struct fib_rules_ops *ops)
{
 int err;

 err = fib_default_rule_add(ops, 0, RT_TABLE_LOCAL, 0);
 if (err < 0)
  return err;
 err = fib_default_rule_add(ops, 0x7FFE, RT_TABLE_MAIN, 0);
 if (err < 0)
  return err;
 err = fib_default_rule_add(ops, 0x7FFF, RT_TABLE_DEFAULT, 0);
 if (err < 0)
  return err;
 return 0;
}
