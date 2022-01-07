
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int resume_irqs (int) ;

__attribute__((used)) static void irq_pm_syscore_resume(void)
{
 resume_irqs(1);
}
