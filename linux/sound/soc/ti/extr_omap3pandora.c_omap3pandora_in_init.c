
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;


 int snd_soc_dapm_nc_pin (struct snd_soc_dapm_context*,char*) ;

__attribute__((used)) static int omap3pandora_in_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dapm_context *dapm = &rtd->card->dapm;


 snd_soc_dapm_nc_pin(dapm, "HSMIC");
 snd_soc_dapm_nc_pin(dapm, "CARKITMIC");
 snd_soc_dapm_nc_pin(dapm, "DIGIMIC0");
 snd_soc_dapm_nc_pin(dapm, "DIGIMIC1");

 return 0;
}
