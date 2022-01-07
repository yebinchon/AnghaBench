
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int rates; int rate_max; int rate_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct rme32 {scalar_t__ fullduplex_mode; int lock; struct snd_pcm_substream* capture_substream; } ;


 int EBUSY ;
 int EIO ;
 scalar_t__ RME32_PRO_WITH_8414 (struct rme32*) ;
 int SNDRV_PCM_RATE_88200 ;
 int SNDRV_PCM_RATE_96000 ;
 int snd_pcm_rate_to_rate_bit (int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme32_capture_getrate (struct rme32*,int*) ;
 int snd_rme32_set_buffer_constraint (struct rme32*,struct snd_pcm_runtime*) ;
 TYPE_1__ snd_rme32_spdif_fd_info ;
 TYPE_1__ snd_rme32_spdif_info ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_rme32_capture_spdif_open(struct snd_pcm_substream *substream)
{
 int isadat, rate;
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_pcm_set_sync(substream);

 spin_lock_irq(&rme32->lock);
        if (rme32->capture_substream != ((void*)0)) {
  spin_unlock_irq(&rme32->lock);
                return -EBUSY;
        }
 rme32->capture_substream = substream;
 spin_unlock_irq(&rme32->lock);

 if (rme32->fullduplex_mode)
  runtime->hw = snd_rme32_spdif_fd_info;
 else
  runtime->hw = snd_rme32_spdif_info;
 if (RME32_PRO_WITH_8414(rme32)) {
  runtime->hw.rates |= SNDRV_PCM_RATE_88200 | SNDRV_PCM_RATE_96000;
  runtime->hw.rate_max = 96000;
 }
 if ((rate = snd_rme32_capture_getrate(rme32, &isadat)) > 0) {
  if (isadat) {
   return -EIO;
  }
  runtime->hw.rates = snd_pcm_rate_to_rate_bit(rate);
  runtime->hw.rate_min = rate;
  runtime->hw.rate_max = rate;
 }

 snd_rme32_set_buffer_constraint(rme32, runtime);

 return 0;
}
