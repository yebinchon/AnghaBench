
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pm_qos_constraints {int * notifiers; int type; void* no_constraint_value; void* default_value; void* target_value; int list; } ;
struct freq_constraints {int max_freq_notifiers; struct pm_qos_constraints max_freq; int min_freq_notifiers; struct pm_qos_constraints min_freq; } ;


 int BLOCKING_INIT_NOTIFIER_HEAD (int *) ;
 void* FREQ_QOS_MAX_DEFAULT_VALUE ;
 void* FREQ_QOS_MIN_DEFAULT_VALUE ;
 int PM_QOS_MAX ;
 int PM_QOS_MIN ;
 int plist_head_init (int *) ;

void freq_constraints_init(struct freq_constraints *qos)
{
 struct pm_qos_constraints *c;

 c = &qos->min_freq;
 plist_head_init(&c->list);
 c->target_value = FREQ_QOS_MIN_DEFAULT_VALUE;
 c->default_value = FREQ_QOS_MIN_DEFAULT_VALUE;
 c->no_constraint_value = FREQ_QOS_MIN_DEFAULT_VALUE;
 c->type = PM_QOS_MAX;
 c->notifiers = &qos->min_freq_notifiers;
 BLOCKING_INIT_NOTIFIER_HEAD(c->notifiers);

 c = &qos->max_freq;
 plist_head_init(&c->list);
 c->target_value = FREQ_QOS_MAX_DEFAULT_VALUE;
 c->default_value = FREQ_QOS_MAX_DEFAULT_VALUE;
 c->no_constraint_value = FREQ_QOS_MAX_DEFAULT_VALUE;
 c->type = PM_QOS_MIN;
 c->notifiers = &qos->max_freq_notifiers;
 BLOCKING_INIT_NOTIFIER_HEAD(c->notifiers);
}
