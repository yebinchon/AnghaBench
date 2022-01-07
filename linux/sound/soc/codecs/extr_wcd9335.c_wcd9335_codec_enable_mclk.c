
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int _wcd9335_codec_enable_mclk (struct snd_soc_component*,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wcd9335_codec_enable_mclk(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kc, int event)
{
 struct snd_soc_component *comp = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  return _wcd9335_codec_enable_mclk(comp, 1);
 case 129:
  return _wcd9335_codec_enable_mclk(comp, 0);
 }

 return 0;
}
