
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 struct irq_domain* irq_default_domain ;
 int pr_debug (char*,struct irq_domain*) ;

void irq_set_default_host(struct irq_domain *domain)
{
 pr_debug("Default domain set to @0x%p\n", domain);

 irq_default_domain = domain;
}
