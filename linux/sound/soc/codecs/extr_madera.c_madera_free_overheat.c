
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct madera_priv {struct madera* madera; } ;
struct madera {int dummy; } ;


 int MADERA_IRQ_SPK_OVERHEAT ;
 int MADERA_IRQ_SPK_OVERHEAT_WARN ;
 int madera_free_irq (struct madera*,int ,struct madera*) ;

int madera_free_overheat(struct madera_priv *priv)
{
 struct madera *madera = priv->madera;

 madera_free_irq(madera, MADERA_IRQ_SPK_OVERHEAT_WARN, madera);
 madera_free_irq(madera, MADERA_IRQ_SPK_OVERHEAT, madera);

 return 0;
}
