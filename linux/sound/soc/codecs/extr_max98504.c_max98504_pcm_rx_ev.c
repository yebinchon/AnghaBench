
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct max98504_priv {int regmap; int pcm_rx_channels; } ;


 int MAX98504_PCM_RX_ENABLE ;


 int regmap_write (int ,int ,int ) ;
 struct max98504_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int max98504_pcm_rx_ev(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *c = snd_soc_dapm_to_component(w->dapm);
 struct max98504_priv *max98504 = snd_soc_component_get_drvdata(c);

 switch (event) {
 case 128:
  regmap_write(max98504->regmap, MAX98504_PCM_RX_ENABLE,
        max98504->pcm_rx_channels);
  break;
 case 129:
  regmap_write(max98504->regmap, MAX98504_PCM_RX_ENABLE, 0);
  break;
 }

 return 0;
}
