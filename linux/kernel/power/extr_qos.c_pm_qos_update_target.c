
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_qos_constraints {int default_value; scalar_t__ notifiers; int list; } ;
struct plist_node {int dummy; } ;
typedef enum pm_qos_req_action { ____Placeholder_pm_qos_req_action } pm_qos_req_action ;



 int PM_QOS_DEFAULT_VALUE ;


 int blocking_notifier_call_chain (scalar_t__,unsigned long,int *) ;
 int plist_add (struct plist_node*,int *) ;
 int plist_del (struct plist_node*,int *) ;
 int plist_node_init (struct plist_node*,int) ;
 int pm_qos_get_value (struct pm_qos_constraints*) ;
 int pm_qos_lock ;
 int pm_qos_set_value (struct pm_qos_constraints*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int trace_pm_qos_update_target (int,int,int) ;

int pm_qos_update_target(struct pm_qos_constraints *c, struct plist_node *node,
    enum pm_qos_req_action action, int value)
{
 unsigned long flags;
 int prev_value, curr_value, new_value;
 int ret;

 spin_lock_irqsave(&pm_qos_lock, flags);
 prev_value = pm_qos_get_value(c);
 if (value == PM_QOS_DEFAULT_VALUE)
  new_value = c->default_value;
 else
  new_value = value;

 switch (action) {
 case 129:
  plist_del(node, &c->list);
  break;
 case 128:





  plist_del(node, &c->list);

 case 130:
  plist_node_init(node, new_value);
  plist_add(node, &c->list);
  break;
 default:

  ;
 }

 curr_value = pm_qos_get_value(c);
 pm_qos_set_value(c, curr_value);

 spin_unlock_irqrestore(&pm_qos_lock, flags);

 trace_pm_qos_update_target(action, prev_value, curr_value);
 if (prev_value != curr_value) {
  ret = 1;
  if (c->notifiers)
   blocking_notifier_call_chain(c->notifiers,
           (unsigned long)curr_value,
           ((void*)0));
 } else {
  ret = 0;
 }
 return ret;
}
