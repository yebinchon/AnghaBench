
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fib_rule {scalar_t__ action; scalar_t__ table; scalar_t__ l3mdev; } ;


 scalar_t__ FR_ACT_TO_TBL ;
 scalar_t__ RT6_TABLE_LOCAL ;
 scalar_t__ RT6_TABLE_MAIN ;
 int fib6_rule_matchall (struct fib_rule const*) ;

bool fib6_rule_default(const struct fib_rule *rule)
{
 if (!fib6_rule_matchall(rule) || rule->action != FR_ACT_TO_TBL ||
     rule->l3mdev)
  return 0;
 if (rule->table != RT6_TABLE_LOCAL && rule->table != RT6_TABLE_MAIN)
  return 0;
 return 1;
}
