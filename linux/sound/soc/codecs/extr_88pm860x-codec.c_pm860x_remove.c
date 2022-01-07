
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct pm860x_priv {int * irq; } ;


 int free_irq (int ,struct pm860x_priv*) ;
 struct pm860x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void pm860x_remove(struct snd_soc_component *component)
{
 struct pm860x_priv *pm860x = snd_soc_component_get_drvdata(component);
 int i;

 for (i = 3; i >= 0; i--)
  free_irq(pm860x->irq[i], pm860x);
}
