
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_jack {int dummy; } ;
struct snd_soc_component {int dummy; } ;
struct rt5645_priv {scalar_t__ codec_type; int en_button_func; int regmap; struct snd_soc_jack* btn_jack; struct snd_soc_jack* mic_jack; struct snd_soc_jack* hp_jack; } ;


 scalar_t__ CODEC_TYPE_RT5650 ;
 int RT5645_DIG_GATE_CTRL ;
 int RT5645_GEN_CTRL1 ;
 int RT5645_GP1_PIN_IRQ ;
 int RT5645_GPIO_CTRL1 ;
 int regmap_update_bits (int ,int ,int ,int ) ;
 int rt5645_irq (int ,struct rt5645_priv*) ;
 struct rt5645_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

int rt5645_set_jack_detect(struct snd_soc_component *component,
 struct snd_soc_jack *hp_jack, struct snd_soc_jack *mic_jack,
 struct snd_soc_jack *btn_jack)
{
 struct rt5645_priv *rt5645 = snd_soc_component_get_drvdata(component);

 rt5645->hp_jack = hp_jack;
 rt5645->mic_jack = mic_jack;
 rt5645->btn_jack = btn_jack;
 if (rt5645->btn_jack && rt5645->codec_type == CODEC_TYPE_RT5650) {
  rt5645->en_button_func = 1;
  regmap_update_bits(rt5645->regmap, RT5645_GPIO_CTRL1,
    RT5645_GP1_PIN_IRQ, RT5645_GP1_PIN_IRQ);
  regmap_update_bits(rt5645->regmap, RT5645_GEN_CTRL1,
    RT5645_DIG_GATE_CTRL, RT5645_DIG_GATE_CTRL);
 }
 rt5645_irq(0, rt5645);

 return 0;
}
