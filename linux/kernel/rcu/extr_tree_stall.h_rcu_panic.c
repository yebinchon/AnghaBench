
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_DONE ;
 int rcu_cpu_stall_suppress ;

__attribute__((used)) static int rcu_panic(struct notifier_block *this, unsigned long ev, void *ptr)
{
 rcu_cpu_stall_suppress = 1;
 return NOTIFY_DONE;
}
