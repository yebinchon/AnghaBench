
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct rt5677_priv {int is_dsp_mode; int regmap; } ;


 int RT5677_PWR_DSP ;
 int RT5677_PWR_DSP1 ;
 int regmap_update_bits (int ,int ,int,int) ;
 struct rt5677_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static void rt5677_set_dsp_mode(struct snd_soc_component *component, bool on)
{
 struct rt5677_priv *rt5677 = snd_soc_component_get_drvdata(component);

 if (on) {
  regmap_update_bits(rt5677->regmap, RT5677_PWR_DSP1,
   RT5677_PWR_DSP, RT5677_PWR_DSP);
  rt5677->is_dsp_mode = 1;
 } else {
  regmap_update_bits(rt5677->regmap, RT5677_PWR_DSP1,
   RT5677_PWR_DSP, 0x0);
  rt5677->is_dsp_mode = 0;
 }
}
