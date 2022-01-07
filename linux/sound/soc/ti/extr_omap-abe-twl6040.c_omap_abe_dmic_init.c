
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_1__* card; } ;
struct snd_soc_dapm_context {int dummy; } ;
struct TYPE_2__ {struct snd_soc_dapm_context dapm; } ;


 int ARRAY_SIZE (int ) ;
 int dmic_audio_map ;
 int snd_soc_dapm_add_routes (struct snd_soc_dapm_context*,int ,int ) ;

__attribute__((used)) static int omap_abe_dmic_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_dapm_context *dapm = &rtd->card->dapm;

 return snd_soc_dapm_add_routes(dapm, dmic_audio_map,
    ARRAY_SIZE(dmic_audio_map));
}
