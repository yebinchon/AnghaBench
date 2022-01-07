
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crush_rule {int dummy; } ;


 int kfree (struct crush_rule*) ;

void crush_destroy_rule(struct crush_rule *rule)
{
 kfree(rule);
}
