
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; TYPE_1__* pstr; } ;
struct snd_pcm_runtime {int info; } ;
struct TYPE_2__ {int substream_count; } ;


 int DSP_CAP_DUPLEX ;
 int DSP_CAP_MULTI ;
 int DSP_CAP_REALTIME ;
 int SNDRV_PCM_INFO_BATCH ;
 int SNDRV_PCM_INFO_BLOCK_TRANSFER ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;

__attribute__((used)) static int snd_pcm_oss_get_caps1(struct snd_pcm_substream *substream, int res)
{

 if (substream == ((void*)0)) {
  res &= ~DSP_CAP_DUPLEX;
  return res;
 }
 return res;
}
