
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int status_use_accessors; } ;


 int _IRQ_DISABLE_UNLAZY ;

__attribute__((used)) static inline bool irq_settings_disable_unlazy(struct irq_desc *desc)
{
 return desc->status_use_accessors & _IRQ_DISABLE_UNLAZY;
}
