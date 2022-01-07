
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;




 int TAS2552_CFG_1 ;
 int TAS2552_CFG_2 ;
 int TAS2552_LIMIT_RATE_HYS ;
 int TAS2552_RESERVED_0D ;
 int TAS2552_SWS ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int tas2552_post_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 switch (event) {
 case 128:
  snd_soc_component_write(component, TAS2552_RESERVED_0D, 0xc0);
  snd_soc_component_update_bits(component, TAS2552_LIMIT_RATE_HYS, (1 << 5),
        (1 << 5));
  snd_soc_component_update_bits(component, TAS2552_CFG_2, 1, 0);
  snd_soc_component_update_bits(component, TAS2552_CFG_1, TAS2552_SWS, 0);
  break;
 case 129:
  snd_soc_component_update_bits(component, TAS2552_CFG_1, TAS2552_SWS,
        TAS2552_SWS);
  snd_soc_component_update_bits(component, TAS2552_CFG_2, 1, 1);
  snd_soc_component_update_bits(component, TAS2552_LIMIT_RATE_HYS, (1 << 5), 0);
  snd_soc_component_write(component, TAS2552_RESERVED_0D, 0xbe);
  break;
 }
 return 0;
}
