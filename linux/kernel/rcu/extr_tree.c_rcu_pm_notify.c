
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int NOTIFY_OK ;




 int rcu_expedite_gp () ;
 int rcu_unexpedite_gp () ;

__attribute__((used)) static int rcu_pm_notify(struct notifier_block *self,
    unsigned long action, void *hcpu)
{
 switch (action) {
 case 131:
 case 128:
  rcu_expedite_gp();
  break;
 case 130:
 case 129:
  rcu_unexpedite_gp();
  break;
 default:
  break;
 }
 return NOTIFY_OK;
}
