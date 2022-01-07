
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct atiixp {int open_mutex; int * dmas; scalar_t__ spdif_over_aclink; } ;


 size_t ATI_DMA_PLAYBACK ;
 size_t ATI_DMA_SPDIF ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_atiixp_pcm_close (struct snd_pcm_substream*,int *) ;
 struct atiixp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_atiixp_spdif_close(struct snd_pcm_substream *substream)
{
 struct atiixp *chip = snd_pcm_substream_chip(substream);
 int err;
 mutex_lock(&chip->open_mutex);
 if (chip->spdif_over_aclink)
  err = snd_atiixp_pcm_close(substream, &chip->dmas[ATI_DMA_PLAYBACK]);
 else
  err = snd_atiixp_pcm_close(substream, &chip->dmas[ATI_DMA_SPDIF]);
 mutex_unlock(&chip->open_mutex);
 return err;
}
