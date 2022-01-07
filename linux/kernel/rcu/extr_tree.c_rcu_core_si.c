
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct softirq_action {int dummy; } ;


 int rcu_core () ;

__attribute__((used)) static void rcu_core_si(struct softirq_action *h)
{
 rcu_core();
}
