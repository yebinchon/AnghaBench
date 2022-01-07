
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt274_priv {int regmap; struct snd_soc_jack* jack; } ;


 int RT274_EAPD_GPIO_IRQ_CTRL ;
 int RT274_IRQ_DIS ;
 int RT274_IRQ_EN ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rt274_irq (int ,struct rt274_priv*) ;
 struct rt274_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int rt274_mic_detect(struct snd_soc_component *component,
 struct snd_soc_jack *jack, void *data)
{
 struct rt274_priv *rt274 = snd_soc_component_get_drvdata(component);

 rt274->jack = jack;

 if (jack == ((void*)0)) {

  regmap_update_bits(rt274->regmap, RT274_EAPD_GPIO_IRQ_CTRL,
     RT274_IRQ_EN, RT274_IRQ_DIS);

  return 0;
 }

 regmap_update_bits(rt274->regmap, RT274_EAPD_GPIO_IRQ_CTRL,
    RT274_IRQ_EN, RT274_IRQ_EN);


 rt274_irq(0, rt274);

 return 0;
}
