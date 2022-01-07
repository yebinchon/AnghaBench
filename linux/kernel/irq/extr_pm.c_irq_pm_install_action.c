
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irqaction {int flags; } ;
struct irq_desc {scalar_t__ nr_actions; scalar_t__ force_resume_depth; scalar_t__ no_suspend_depth; scalar_t__ cond_suspend_depth; } ;


 int IRQF_COND_SUSPEND ;
 int IRQF_FORCE_RESUME ;
 int IRQF_NO_SUSPEND ;
 int WARN_ON_ONCE (int) ;

void irq_pm_install_action(struct irq_desc *desc, struct irqaction *action)
{
 desc->nr_actions++;

 if (action->flags & IRQF_FORCE_RESUME)
  desc->force_resume_depth++;

 WARN_ON_ONCE(desc->force_resume_depth &&
       desc->force_resume_depth != desc->nr_actions);

 if (action->flags & IRQF_NO_SUSPEND)
  desc->no_suspend_depth++;
 else if (action->flags & IRQF_COND_SUSPEND)
  desc->cond_suspend_depth++;

 WARN_ON_ONCE(desc->no_suspend_depth &&
       (desc->no_suspend_depth +
   desc->cond_suspend_depth) != desc->nr_actions);
}
