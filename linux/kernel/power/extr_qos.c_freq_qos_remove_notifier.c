
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct notifier_block {int dummy; } ;
struct TYPE_4__ {int notifiers; } ;
struct TYPE_3__ {int notifiers; } ;
struct freq_constraints {TYPE_2__ max_freq; TYPE_1__ min_freq; } ;
typedef enum freq_qos_req_type { ____Placeholder_freq_qos_req_type } freq_qos_req_type ;


 int EINVAL ;


 scalar_t__ IS_ERR_OR_NULL (struct freq_constraints*) ;
 int WARN_ON (int) ;
 int blocking_notifier_chain_unregister (int ,struct notifier_block*) ;

int freq_qos_remove_notifier(struct freq_constraints *qos,
        enum freq_qos_req_type type,
        struct notifier_block *notifier)
{
 int ret;

 if (IS_ERR_OR_NULL(qos) || !notifier)
  return -EINVAL;

 switch (type) {
 case 128:
  ret = blocking_notifier_chain_unregister(qos->min_freq.notifiers,
        notifier);
  break;
 case 129:
  ret = blocking_notifier_chain_unregister(qos->max_freq.notifiers,
        notifier);
  break;
 default:
  WARN_ON(1);
  ret = -EINVAL;
 }

 return ret;
}
