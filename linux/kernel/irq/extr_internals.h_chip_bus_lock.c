
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* chip; } ;
struct irq_desc {TYPE_2__ irq_data; } ;
struct TYPE_4__ {int (* irq_bus_lock ) (TYPE_2__*) ;} ;


 int stub1 (TYPE_2__*) ;
 scalar_t__ unlikely (int (*) (TYPE_2__*)) ;

__attribute__((used)) static inline void chip_bus_lock(struct irq_desc *desc)
{
 if (unlikely(desc->irq_data.chip->irq_bus_lock))
  desc->irq_data.chip->irq_bus_lock(&desc->irq_data);
}
