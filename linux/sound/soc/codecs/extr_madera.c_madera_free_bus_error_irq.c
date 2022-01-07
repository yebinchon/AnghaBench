
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {int * adsp; struct madera* madera; } ;
struct madera {int dummy; } ;


 int * madera_dsp_bus_error_irqs ;
 int madera_free_irq (struct madera*,int ,int *) ;

void madera_free_bus_error_irq(struct madera_priv *priv, int dsp_num)
{
 struct madera *madera = priv->madera;

 madera_free_irq(madera,
   madera_dsp_bus_error_irqs[dsp_num],
   &priv->adsp[dsp_num]);
}
