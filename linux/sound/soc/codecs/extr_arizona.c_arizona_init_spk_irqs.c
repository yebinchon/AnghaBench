
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct arizona {int dev; } ;


 int ARIZONA_IRQ_SPK_OVERHEAT ;
 int ARIZONA_IRQ_SPK_OVERHEAT_WARN ;
 int arizona_request_irq (struct arizona*,int ,char*,int ,struct arizona*) ;
 int arizona_thermal_shutdown ;
 int arizona_thermal_warn ;
 int dev_err (int ,char*,int) ;

int arizona_init_spk_irqs(struct arizona *arizona)
{
 int ret;

 ret = arizona_request_irq(arizona, ARIZONA_IRQ_SPK_OVERHEAT_WARN,
      "Thermal warning", arizona_thermal_warn,
      arizona);
 if (ret != 0)
  dev_err(arizona->dev,
   "Failed to get thermal warning IRQ: %d\n",
   ret);

 ret = arizona_request_irq(arizona, ARIZONA_IRQ_SPK_OVERHEAT,
      "Thermal shutdown", arizona_thermal_shutdown,
      arizona);
 if (ret != 0)
  dev_err(arizona->dev,
   "Failed to get thermal shutdown IRQ: %d\n",
   ret);

 return 0;
}
