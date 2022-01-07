
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct aic3x_priv {int micbias_vg; } ;


 int MICBIAS_CTRL ;
 int MICBIAS_LEVEL_MASK ;
 int MICBIAS_LEVEL_SHIFT ;


 struct aic3x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int mic_bias_event(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct aic3x_priv *aic3x = snd_soc_component_get_drvdata(component);

 switch (event) {
 case 129:

  snd_soc_component_update_bits(component, MICBIAS_CTRL,
    MICBIAS_LEVEL_MASK,
    aic3x->micbias_vg << MICBIAS_LEVEL_SHIFT);
  break;

 case 128:
  snd_soc_component_update_bits(component, MICBIAS_CTRL,
    MICBIAS_LEVEL_MASK, 0);
  break;
 }
 return 0;
}
