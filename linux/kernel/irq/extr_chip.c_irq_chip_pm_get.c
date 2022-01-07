
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_data {TYPE_1__* chip; } ;
struct TYPE_2__ {scalar_t__ parent_device; } ;


 int CONFIG_PM ;
 scalar_t__ IS_ENABLED (int ) ;
 int pm_runtime_get_sync (scalar_t__) ;
 int pm_runtime_put_noidle (scalar_t__) ;

int irq_chip_pm_get(struct irq_data *data)
{
 int retval;

 if (IS_ENABLED(CONFIG_PM) && data->chip->parent_device) {
  retval = pm_runtime_get_sync(data->chip->parent_device);
  if (retval < 0) {
   pm_runtime_put_noidle(data->chip->parent_device);
   return retval;
  }
 }

 return 0;
}
