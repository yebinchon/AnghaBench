
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;





 int wcd9335_codec_hph_hifi_config (struct snd_soc_component*,int) ;
 int wcd9335_codec_hph_lohifi_config (struct snd_soc_component*,int) ;
 int wcd9335_codec_hph_lp_config (struct snd_soc_component*,int) ;

__attribute__((used)) static void wcd9335_codec_hph_mode_config(struct snd_soc_component *component,
       int event, int mode)
{
 switch (mode) {
 case 128:
  wcd9335_codec_hph_lp_config(component, event);
  break;
 case 129:
  wcd9335_codec_hph_lohifi_config(component, event);
  break;
 case 130:
  wcd9335_codec_hph_hifi_config(component, event);
  break;
 }
}
