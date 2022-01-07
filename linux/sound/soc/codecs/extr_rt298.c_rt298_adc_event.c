
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int reg; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int AC_VERB_SET_AMP_GAIN_MUTE ;


 int RT298_D_FILTER_CTRL ;
 int RT298_VAD_CTRL ;


 int VERB_CMD (int ,unsigned int,int ) ;
 int mdelay (int) ;
 int pr_info (char*) ;
 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int rt298_adc_event(struct snd_soc_dapm_widget *w,
        struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int nid;

 nid = (w->reg >> 20) & 0xff;

 switch (event) {
 case 129:
  snd_soc_component_update_bits(component,
   VERB_CMD(AC_VERB_SET_AMP_GAIN_MUTE, nid, 0),
   0x7080, 0x7000);

  if (!(snd_soc_component_read32(component, RT298_VAD_CTRL) & 0x200)) {
   pr_info("NO MCLK\n");
   switch (nid) {
   case 131:
    snd_soc_component_update_bits(component,
     RT298_D_FILTER_CTRL, 0x2, 0x2);
    mdelay(10);
    snd_soc_component_update_bits(component,
     RT298_D_FILTER_CTRL, 0x2, 0x0);
    break;
   case 130:
    snd_soc_component_update_bits(component,
     RT298_D_FILTER_CTRL, 0x4, 0x4);
    mdelay(10);
    snd_soc_component_update_bits(component,
     RT298_D_FILTER_CTRL, 0x4, 0x0);
    break;
   }
  }
  break;
 case 128:
  snd_soc_component_update_bits(component,
   VERB_CMD(AC_VERB_SET_AMP_GAIN_MUTE, nid, 0),
   0x7080, 0x7080);
  break;
 default:
  return 0;
 }

 return 0;
}
