
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 unsigned long LSM_POLICY_CHANGE ;
 int NOTIFY_DONE ;
 int NOTIFY_OK ;
 int ima_lsm_update_rules () ;

int ima_lsm_policy_change(struct notifier_block *nb, unsigned long event,
     void *lsm_data)
{
 if (event != LSM_POLICY_CHANGE)
  return NOTIFY_DONE;

 ima_lsm_update_rules();
 return NOTIFY_OK;
}
