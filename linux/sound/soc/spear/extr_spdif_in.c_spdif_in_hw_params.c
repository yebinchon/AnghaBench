
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int format; } ;
struct spdif_in_dev {TYPE_1__ saved_params; } ;
struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {scalar_t__ stream; } ;
struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 scalar_t__ SNDRV_PCM_STREAM_CAPTURE ;
 int params_format (struct snd_pcm_hw_params*) ;
 struct spdif_in_dev* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int spdif_in_hw_params(struct snd_pcm_substream *substream,
  struct snd_pcm_hw_params *params,
  struct snd_soc_dai *dai)
{
 struct spdif_in_dev *host = snd_soc_dai_get_drvdata(dai);
 u32 format;

 if (substream->stream != SNDRV_PCM_STREAM_CAPTURE)
  return -EINVAL;

 format = params_format(params);
 host->saved_params.format = format;

 return 0;
}
