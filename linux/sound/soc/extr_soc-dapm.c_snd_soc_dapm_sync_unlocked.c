
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dapm_context {TYPE_1__* card; } ;
struct TYPE_2__ {int instantiated; } ;


 int SND_SOC_DAPM_STREAM_NOP ;
 int dapm_power_widgets (TYPE_1__*,int ) ;

int snd_soc_dapm_sync_unlocked(struct snd_soc_dapm_context *dapm)
{




 if (!dapm->card || !dapm->card->instantiated)
  return 0;

 return dapm_power_widgets(dapm->card, SND_SOC_DAPM_STREAM_NOP);
}
