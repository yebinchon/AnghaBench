
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;


 int snd_soc_dapm_nc_pin (struct snd_soc_dapm_context*,char*) ;

__attribute__((used)) static int omap3pandora_out_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dapm_context *dapm = &rtd->card->dapm;


 snd_soc_dapm_nc_pin(dapm, "EARPIECE");
 snd_soc_dapm_nc_pin(dapm, "PREDRIVEL");
 snd_soc_dapm_nc_pin(dapm, "PREDRIVER");
 snd_soc_dapm_nc_pin(dapm, "HSOL");
 snd_soc_dapm_nc_pin(dapm, "HSOR");
 snd_soc_dapm_nc_pin(dapm, "CARKITL");
 snd_soc_dapm_nc_pin(dapm, "CARKITR");
 snd_soc_dapm_nc_pin(dapm, "HFL");
 snd_soc_dapm_nc_pin(dapm, "HFR");
 snd_soc_dapm_nc_pin(dapm, "VIBRA");

 return 0;
}
