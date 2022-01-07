
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int flags; } ;
struct irq_desc {int cond_suspend_depth; int no_suspend_depth; int force_resume_depth; int nr_actions; } ;


 int IRQF_COND_SUSPEND ;
 int IRQF_FORCE_RESUME ;
 int IRQF_NO_SUSPEND ;

void irq_pm_remove_action(struct irq_desc *desc, struct irqaction *action)
{
 desc->nr_actions--;

 if (action->flags & IRQF_FORCE_RESUME)
  desc->force_resume_depth--;

 if (action->flags & IRQF_NO_SUSPEND)
  desc->no_suspend_depth--;
 else if (action->flags & IRQF_COND_SUSPEND)
  desc->cond_suspend_depth--;
}
