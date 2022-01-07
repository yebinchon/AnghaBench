
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int shift; int dapm; } ;
struct snd_soc_component {int dev; } ;


 int MADERA_EDRE_HP_STEREO_CONTROL ;
 unsigned int MADERA_OUT1L_ENA ;

 unsigned int MADERA_OUT1R_ENA ;

 int MADERA_OUTPUT_ENABLES_1 ;
 int dev_err (int ,char*,int) ;
 int snd_soc_component_read (struct snd_soc_component*,int ,unsigned int*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static void cs47l35_hp_post_enable(struct snd_soc_dapm_widget *w)
{
 struct snd_soc_component *component =
  snd_soc_dapm_to_component(w->dapm);
 unsigned int val;
 int ret;

 switch (w->shift) {
 case 129:
 case 128:
  ret = snd_soc_component_read(component, MADERA_OUTPUT_ENABLES_1,
          &val);
  if (ret) {
   dev_err(component->dev,
    "Failed to check output enables: %d\n", ret);
   return;
  }

  val &= (MADERA_OUT1L_ENA | MADERA_OUT1R_ENA);

  if (val != (MADERA_OUT1L_ENA | MADERA_OUT1R_ENA))
   break;

  snd_soc_component_update_bits(component,
           MADERA_EDRE_HP_STEREO_CONTROL,
           0x0001, 1);
  break;
 default:
  break;
 }
}
