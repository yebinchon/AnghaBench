
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_domain {int dummy; } ;


 struct irq_domain* irq_default_domain ;

struct irq_domain *irq_get_default_host(void)
{
 return irq_default_domain;
}
