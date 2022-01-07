
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ parent_device; } ;


 int CONFIG_PM ;
 scalar_t__ IS_ENABLED (int ) ;
 int pm_runtime_put (scalar_t__) ;

int irq_chip_pm_put(struct irq_data *data)
{
 int retval = 0;

 if (IS_ENABLED(CONFIG_PM) && data->chip->parent_device)
  retval = pm_runtime_put(data->chip->parent_device);

 return (retval < 0) ? retval : 0;
}
