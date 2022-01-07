
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_4__ {TYPE_1__* constraints; } ;
struct TYPE_3__ {int notifiers; } ;


 int blocking_notifier_chain_register (int ,struct notifier_block*) ;
 TYPE_2__** pm_qos_array ;

int pm_qos_add_notifier(int pm_qos_class, struct notifier_block *notifier)
{
 int retval;

 retval = blocking_notifier_chain_register(
   pm_qos_array[pm_qos_class]->constraints->notifiers,
   notifier);

 return retval;
}
