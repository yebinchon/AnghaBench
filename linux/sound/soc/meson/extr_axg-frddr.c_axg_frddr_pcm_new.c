
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_dai {int dummy; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int axg_fifo_pcm_new (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int axg_frddr_pcm_new(struct snd_soc_pcm_runtime *rtd,
        struct snd_soc_dai *dai)
{
 return axg_fifo_pcm_new(rtd, SNDRV_PCM_STREAM_PLAYBACK);
}
