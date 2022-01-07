
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {int * adsp; struct madera* madera; } ;
struct madera {int dev; } ;
struct cs47l15 {struct madera_priv core; } ;
typedef int irqreturn_t ;


 int ENODEV ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int ,char*) ;
 int wm_adsp_compr_handle_irq (int *) ;

__attribute__((used)) static irqreturn_t cs47l15_adsp2_irq(int irq, void *data)
{
 struct cs47l15 *cs47l15 = data;
 struct madera_priv *priv = &cs47l15->core;
 struct madera *madera = priv->madera;
 int ret;

 ret = wm_adsp_compr_handle_irq(&priv->adsp[0]);
 if (ret == -ENODEV) {
  dev_err(madera->dev, "Spurious compressed data IRQ\n");
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
