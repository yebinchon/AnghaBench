
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct pm860x_priv {int * irq; int * name; int regmap; struct snd_soc_component* component; } ;


 int IRQF_ONESHOT ;
 int dev_err (int ,char*) ;
 int free_irq (int ,struct pm860x_priv*) ;
 int pm860x_component_handler ;
 int request_threaded_irq (int ,int *,int ,int ,int ,struct pm860x_priv*) ;
 struct pm860x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,int ) ;

__attribute__((used)) static int pm860x_probe(struct snd_soc_component *component)
{
 struct pm860x_priv *pm860x = snd_soc_component_get_drvdata(component);
 int i, ret;

 pm860x->component = component;
 snd_soc_component_init_regmap(component, pm860x->regmap);

 for (i = 0; i < 4; i++) {
  ret = request_threaded_irq(pm860x->irq[i], ((void*)0),
        pm860x_component_handler, IRQF_ONESHOT,
        pm860x->name[i], pm860x);
  if (ret < 0) {
   dev_err(component->dev, "Failed to request IRQ!\n");
   goto out;
  }
 }

 return 0;

out:
 while (--i >= 0)
  free_irq(pm860x->irq[i], pm860x);
 return ret;
}
