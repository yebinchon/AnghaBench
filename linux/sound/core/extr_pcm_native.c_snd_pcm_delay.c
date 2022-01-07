
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_sframes_t ;


 int do_pcm_hwsync (struct snd_pcm_substream*) ;
 int snd_pcm_calc_delay (struct snd_pcm_substream*) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_pcm_delay(struct snd_pcm_substream *substream,
    snd_pcm_sframes_t *delay)
{
 int err;
 snd_pcm_sframes_t n = 0;

 snd_pcm_stream_lock_irq(substream);
 err = do_pcm_hwsync(substream);
 if (!err)
  n = snd_pcm_calc_delay(substream);
 snd_pcm_stream_unlock_irq(substream);
 if (!err)
  *delay = n;
 return err;
}
