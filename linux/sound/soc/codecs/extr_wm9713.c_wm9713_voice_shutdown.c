
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;


 int AC97_EXTENDED_MID ;
 int AC97_HANDSET_RATE ;
 int EINVAL ;
 int SND_SOC_DAPM_PRE_PMD ;
 scalar_t__ WARN_ON (int) ;
 int msecs_to_jiffies (int) ;
 int schedule_timeout_interruptible (int ) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,int) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int wm9713_voice_shutdown(struct snd_soc_dapm_widget *w,
     struct snd_kcontrol *kcontrol, int event)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(w->dapm);

 if (WARN_ON(event != SND_SOC_DAPM_PRE_PMD))
  return -EINVAL;


 snd_soc_component_update_bits(component, AC97_HANDSET_RATE, 0x0f00, 0x0200);
 schedule_timeout_interruptible(msecs_to_jiffies(1));
 snd_soc_component_update_bits(component, AC97_HANDSET_RATE, 0x0f00, 0x0f00);
 snd_soc_component_update_bits(component, AC97_EXTENDED_MID, 0x1000, 0x1000);

 return 0;
}
