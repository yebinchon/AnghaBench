
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dev; struct snd_soc_card* card; } ;
struct snd_soc_card {int dapm; } ;


 int ARRAY_SIZE (int ) ;
 int dev_err (int ,char*,int) ;
 int snd_soc_dapm_add_routes (int *,int ,int ) ;
 int speaker_map ;

__attribute__((used)) static int speaker_codec_init(struct snd_soc_pcm_runtime *rtd)
{
 struct snd_soc_card *card = rtd->card;
 int ret;

 ret = snd_soc_dapm_add_routes(&card->dapm, speaker_map,
          ARRAY_SIZE(speaker_map));

 if (ret)
  dev_err(rtd->dev, "Speaker map addition failed: %d\n", ret);
 return ret;
}
