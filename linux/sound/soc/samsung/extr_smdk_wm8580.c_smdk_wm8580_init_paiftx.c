
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct TYPE_2__ {int dapm; } ;


 int snd_soc_dapm_disable_pin (int *,char*) ;

__attribute__((used)) static int smdk_wm8580_init_paiftx(struct snd_soc_pcm_runtime *rtd)
{



 snd_soc_dapm_disable_pin(&rtd->card->dapm, "MicIn");

 return 0;
}
