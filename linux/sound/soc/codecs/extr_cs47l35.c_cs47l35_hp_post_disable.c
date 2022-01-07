
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dummy; } ;


 int MADERA_DCS_HP1L_CONTROL ;
 int MADERA_DCS_HP1R_CONTROL ;
 int MADERA_EDRE_HP_STEREO_CONTROL ;


 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static void cs47l35_hp_post_disable(struct snd_soc_dapm_widget *w)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);

 switch (w->shift) {
 case 129:
  snd_soc_component_write(component, MADERA_DCS_HP1L_CONTROL,
     0x2006);
  break;
 case 128:
  snd_soc_component_write(component, MADERA_DCS_HP1R_CONTROL,
     0x2006);
  break;
 default:
  return;
 }


 snd_soc_component_update_bits(component,
          MADERA_EDRE_HP_STEREO_CONTROL,
          0x0001, 0);
}
