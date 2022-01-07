
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int name; int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int DAC_LEFT ;
 unsigned int DAC_MUTE ;
 int DAC_RIGHT ;
 unsigned int MODULATOR ;
 int PM860X_DAC_EN_2 ;
 int PM860X_DAC_OFFSET ;
 int PM860X_EAR_CTRL_2 ;
 unsigned int RSYNC_CHANGE ;


 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int pm860x_dac_event(struct snd_soc_dapm_widget *w,
       struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);
 unsigned int dac = 0;
 int data;

 if (!strcmp(w->name, "Left DAC"))
  dac = DAC_LEFT;
 if (!strcmp(w->name, "Right DAC"))
  dac = DAC_RIGHT;
 switch (event) {
 case 128:
  if (dac) {

   dac |= MODULATOR;
   snd_soc_component_update_bits(component, PM860X_DAC_OFFSET,
         DAC_MUTE, DAC_MUTE);
   snd_soc_component_update_bits(component, PM860X_EAR_CTRL_2,
         RSYNC_CHANGE, RSYNC_CHANGE);

   snd_soc_component_update_bits(component, PM860X_DAC_EN_2,
         dac, dac);
  }
  break;
 case 129:
  if (dac) {

   snd_soc_component_update_bits(component, PM860X_DAC_OFFSET,
         DAC_MUTE, DAC_MUTE);
   snd_soc_component_update_bits(component, PM860X_EAR_CTRL_2,
         RSYNC_CHANGE, RSYNC_CHANGE);

   data = snd_soc_component_read32(component, PM860X_DAC_EN_2);
   data &= ~dac;
   if (!(data & (DAC_LEFT | DAC_RIGHT)))
    data &= ~MODULATOR;
   snd_soc_component_write(component, PM860X_DAC_EN_2, data);
  }
  break;
 }
 return 0;
}
