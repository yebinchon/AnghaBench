
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int DAC_MUTE ;
 int PM860X_DAC_OFFSET ;
 int PM860X_EAR_CTRL_2 ;
 int RSYNC_CHANGE ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int ,int ) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int pm860x_rsync_event(struct snd_soc_dapm_widget *w,
         struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);







 snd_soc_component_update_bits(component, PM860X_DAC_OFFSET, DAC_MUTE, 0);
 snd_soc_component_update_bits(component, PM860X_EAR_CTRL_2,
       RSYNC_CHANGE, RSYNC_CHANGE);
 return 0;
}
