
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;
typedef enum profile_type { ____Placeholder_profile_type } profile_type ;


 int EINVAL ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int munmap_notifier ;
 int task_exit_notifier ;

int profile_event_unregister(enum profile_type type, struct notifier_block *n)
{
 int err = -EINVAL;

 switch (type) {
 case 128:
  err = blocking_notifier_chain_unregister(
    &task_exit_notifier, n);
  break;
 case 129:
  err = blocking_notifier_chain_unregister(
    &munmap_notifier, n);
  break;
 }

 return err;
}
