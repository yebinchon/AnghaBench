
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wm8903_platform_data {int irq_active_low; } ;
struct irq_data {int dummy; } ;
struct i2c_client {int irq; int dev; } ;


 int EINVAL ;



 int dev_err (int *,char*,int ) ;
 struct irq_data* irq_get_irq_data (int ) ;
 int irqd_get_trigger_type (struct irq_data*) ;

__attribute__((used)) static int wm8903_set_pdata_irq_trigger(struct i2c_client *i2c,
     struct wm8903_platform_data *pdata)
{
 struct irq_data *irq_data = irq_get_irq_data(i2c->irq);
 if (!irq_data) {
  dev_err(&i2c->dev, "Invalid IRQ: %d\n",
   i2c->irq);
  return -EINVAL;
 }

 switch (irqd_get_trigger_type(irq_data)) {
 case 128:
 default:





 case 130:
  pdata->irq_active_low = 0;
  break;
 case 129:
  pdata->irq_active_low = 1;
  break;
 }

 return 0;
}
