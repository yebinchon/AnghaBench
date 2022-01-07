
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_rules_ops {int owner; } ;


 int module_put (int ) ;

__attribute__((used)) static void rules_ops_put(struct fib_rules_ops *ops)
{
 if (ops)
  module_put(ops->owner);
}
