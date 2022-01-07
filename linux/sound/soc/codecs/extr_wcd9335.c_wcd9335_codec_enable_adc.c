
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;



 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int wcd9335_codec_set_tx_hold (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wcd9335_codec_enable_adc(struct snd_soc_dapm_widget *w,
  struct snd_kcontrol *kc, int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  wcd9335_codec_set_tx_hold(comp, w->reg, 1);
  break;
 default:
  break;
 }

 return 0;
}
