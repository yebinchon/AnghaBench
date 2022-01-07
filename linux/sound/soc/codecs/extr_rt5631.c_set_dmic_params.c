
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct rt5631_priv {int rx_rate; } ;


 int EINVAL ;
 int RT5631_DIG_MIC_CTRL ;
 int RT5631_DMIC_CLK_CTRL_MASK ;
 int RT5631_DMIC_CLK_CTRL_TO_128FS ;
 int RT5631_DMIC_CLK_CTRL_TO_32FS ;
 int RT5631_DMIC_CLK_CTRL_TO_64FS ;
 struct rt5631_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int set_dmic_params(struct snd_soc_dapm_widget *w,
 struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 struct rt5631_priv *rt5631 = snd_soc_component_get_drvdata(component);

 switch (rt5631->rx_rate) {
 case 44100:
 case 48000:
  snd_soc_component_update_bits(component, RT5631_DIG_MIC_CTRL,
   RT5631_DMIC_CLK_CTRL_MASK,
   RT5631_DMIC_CLK_CTRL_TO_32FS);
  break;

 case 32000:
 case 22050:
  snd_soc_component_update_bits(component, RT5631_DIG_MIC_CTRL,
   RT5631_DMIC_CLK_CTRL_MASK,
   RT5631_DMIC_CLK_CTRL_TO_64FS);
  break;

 case 16000:
 case 11025:
 case 8000:
  snd_soc_component_update_bits(component, RT5631_DIG_MIC_CTRL,
   RT5631_DMIC_CLK_CTRL_MASK,
   RT5631_DMIC_CLK_CTRL_TO_128FS);
  break;

 default:
  return -EINVAL;
 }

 return 0;
}
