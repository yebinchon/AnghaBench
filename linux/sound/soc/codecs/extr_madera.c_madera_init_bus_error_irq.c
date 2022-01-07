
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {int * adsp; struct madera* madera; } ;
struct madera {int dev; } ;
typedef int irq_handler_t ;


 int dev_err (int ,char*,int) ;
 int * madera_dsp_bus_error_irqs ;
 int madera_request_irq (struct madera*,int ,char*,int ,int *) ;

int madera_init_bus_error_irq(struct madera_priv *priv, int dsp_num,
         irq_handler_t handler)
{
 struct madera *madera = priv->madera;
 int ret;

 ret = madera_request_irq(madera,
     madera_dsp_bus_error_irqs[dsp_num],
     "ADSP2 bus error",
     handler,
     &priv->adsp[dsp_num]);
 if (ret)
  dev_err(madera->dev,
   "Failed to request DSP Lock region IRQ: %d\n", ret);

 return ret;
}
