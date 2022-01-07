
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * adsp; struct arizona* arizona; } ;
struct wm5102_priv {TYPE_1__ core; } ;
struct arizona {int dev; } ;
typedef int irqreturn_t ;


 int ENODEV ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int dev_err (int ,char*) ;
 int wm_adsp_compr_handle_irq (int *) ;

__attribute__((used)) static irqreturn_t wm5102_adsp2_irq(int irq, void *data)
{
 struct wm5102_priv *priv = data;
 struct arizona *arizona = priv->core.arizona;
 int ret;

 ret = wm_adsp_compr_handle_irq(&priv->core.adsp[0]);
 if (ret == -ENODEV) {
  dev_err(arizona->dev, "Spurious compressed data IRQ\n");
  return IRQ_NONE;
 }

 return IRQ_HANDLED;
}
