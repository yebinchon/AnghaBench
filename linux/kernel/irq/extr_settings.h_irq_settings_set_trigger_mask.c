
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct irq_desc {int status_use_accessors; } ;


 int IRQ_TYPE_SENSE_MASK ;

__attribute__((used)) static inline void
irq_settings_set_trigger_mask(struct irq_desc *desc, u32 mask)
{
 desc->status_use_accessors &= ~IRQ_TYPE_SENSE_MASK;
 desc->status_use_accessors |= mask & IRQ_TYPE_SENSE_MASK;
}
