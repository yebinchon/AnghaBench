
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_2__ {int rate_min; int rate_max; int rates; } ;
struct snd_pcm_runtime {TYPE_1__ hw; } ;
struct rme96 {int wcreg; int lock; struct snd_pcm_substream* playback_substream; scalar_t__ iobase; } ;


 int EBUSY ;
 scalar_t__ RME96_INPUT_ANALOG ;
 scalar_t__ RME96_IO_CONTROL_REGISTER ;
 int RME96_WCR_ADAT ;
 int RME96_WCR_MASTER ;
 int rme96_set_buffer_size_constraint (struct rme96*,struct snd_pcm_runtime*) ;
 int snd_pcm_rate_to_rate_bit (int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct rme96* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int snd_rme96_capture_getrate (struct rme96*,int*) ;
 scalar_t__ snd_rme96_getinputtype (struct rme96*) ;
 TYPE_1__ snd_rme96_playback_adat_info ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int writel (int,scalar_t__) ;

__attribute__((used)) static int
snd_rme96_playback_adat_open(struct snd_pcm_substream *substream)
{
        int rate, dummy;
 struct rme96 *rme96 = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_pcm_set_sync(substream);
 spin_lock_irq(&rme96->lock);
 if (rme96->playback_substream) {
  spin_unlock_irq(&rme96->lock);
                return -EBUSY;
        }
 rme96->wcreg |= RME96_WCR_ADAT;
 writel(rme96->wcreg, rme96->iobase + RME96_IO_CONTROL_REGISTER);
 rme96->playback_substream = substream;
 spin_unlock_irq(&rme96->lock);

 runtime->hw = snd_rme96_playback_adat_info;
 if (!(rme96->wcreg & RME96_WCR_MASTER) &&
            snd_rme96_getinputtype(rme96) != RME96_INPUT_ANALOG &&
     (rate = snd_rme96_capture_getrate(rme96, &dummy)) > 0)
 {

                runtime->hw.rates = snd_pcm_rate_to_rate_bit(rate);
                runtime->hw.rate_min = rate;
                runtime->hw.rate_max = rate;
 }
 rme96_set_buffer_size_constraint(rme96, runtime);
 return 0;
}
