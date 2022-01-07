
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status_use_accessors; } ;


 int _IRQ_PER_CPU ;

__attribute__((used)) static inline void irq_settings_set_per_cpu(struct irq_desc *desc)
{
 desc->status_use_accessors |= _IRQ_PER_CPU;
}
