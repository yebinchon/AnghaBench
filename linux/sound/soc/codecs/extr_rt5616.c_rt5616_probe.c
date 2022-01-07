
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dev; } ;
struct rt5616_priv {struct snd_soc_component* component; int mclk; } ;


 int EPROBE_DEFER ;
 int PTR_ERR (int ) ;
 int devm_clk_get (int ,char*) ;
 struct rt5616_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt5616_probe(struct snd_soc_component *component)
{
 struct rt5616_priv *rt5616 = snd_soc_component_get_drvdata(component);


 rt5616->mclk = devm_clk_get(component->dev, "mclk");
 if (PTR_ERR(rt5616->mclk) == -EPROBE_DEFER)
  return -EPROBE_DEFER;

 rt5616->component = component;

 return 0;
}
