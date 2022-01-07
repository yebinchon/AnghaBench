
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {struct madera* madera; } ;
struct madera {struct device* dev; } ;
struct device {int dummy; } ;


 int MADERA_IRQ_SPK_OVERHEAT ;
 int MADERA_IRQ_SPK_OVERHEAT_WARN ;
 int dev_err (struct device*,char*,int) ;
 int madera_request_irq (struct madera*,int ,char*,int ,struct madera*) ;
 int madera_thermal_warn ;

int madera_init_overheat(struct madera_priv *priv)
{
 struct madera *madera = priv->madera;
 struct device *dev = madera->dev;
 int ret;

 ret = madera_request_irq(madera, MADERA_IRQ_SPK_OVERHEAT_WARN,
     "Thermal warning", madera_thermal_warn,
     madera);
 if (ret)
  dev_err(dev, "Failed to get thermal warning IRQ: %d\n", ret);

 ret = madera_request_irq(madera, MADERA_IRQ_SPK_OVERHEAT,
     "Thermal shutdown", madera_thermal_warn,
     madera);
 if (ret)
  dev_err(dev, "Failed to get thermal shutdown IRQ: %d\n", ret);

 return 0;
}
