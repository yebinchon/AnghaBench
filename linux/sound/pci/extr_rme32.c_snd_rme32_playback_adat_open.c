
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int rate_min; int rate_max; int rates; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct rme32 {int rcreg; scalar_t__ fullduplex_mode; int lock; struct snd_pcm_substream* playback_substream; scalar_t__ iobase; int wcreg; } ;


 int EBUSY ;
 scalar_t__ RME32_IO_CONTROL_REGISTER ;
 int RME32_RCR_KMODE ;
 int RME32_WCR_ADAT ;
 int snd_pcm_rate_to_rate_bit (int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct rme32* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 TYPE_1__ snd_rme32_adat_fd_info ;
 TYPE_1__ snd_rme32_adat_info ;
 int snd_rme32_capture_getrate (struct rme32*,int*) ;
 int snd_rme32_set_buffer_constraint (struct rme32*,struct snd_pcm_runtime*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int ,scalar_t__) ;

__attribute__((used)) static int
snd_rme32_playback_adat_open(struct snd_pcm_substream *substream)
{
 int rate, dummy;
 struct rme32 *rme32 = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_pcm_set_sync(substream);

 spin_lock_irq(&rme32->lock);
        if (rme32->playback_substream != ((void*)0)) {
  spin_unlock_irq(&rme32->lock);
                return -EBUSY;
        }
 rme32->wcreg |= RME32_WCR_ADAT;
 writel(rme32->wcreg, rme32->iobase + RME32_IO_CONTROL_REGISTER);
 rme32->playback_substream = substream;
 spin_unlock_irq(&rme32->lock);

 if (rme32->fullduplex_mode)
  runtime->hw = snd_rme32_adat_fd_info;
 else
  runtime->hw = snd_rme32_adat_info;
 if ((rme32->rcreg & RME32_RCR_KMODE) &&
     (rate = snd_rme32_capture_getrate(rme32, &dummy)) > 0) {

                runtime->hw.rates = snd_pcm_rate_to_rate_bit(rate);
                runtime->hw.rate_min = rate;
                runtime->hw.rate_max = rate;
 }

 snd_rme32_set_buffer_constraint(rme32, runtime);
 return 0;
}
