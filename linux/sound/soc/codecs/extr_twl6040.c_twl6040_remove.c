
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twl6040_data {int plug_irq; } ;
struct snd_soc_component {int dummy; } ;


 int free_irq (int ,struct snd_soc_component*) ;
 struct twl6040_data* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void twl6040_remove(struct snd_soc_component *component)
{
 struct twl6040_data *priv = snd_soc_component_get_drvdata(component);

 free_irq(priv->plug_irq, component);
}
