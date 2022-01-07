
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
typedef int snd_pcm_uframes_t ;
typedef scalar_t__ snd_pcm_sframes_t ;


 scalar_t__ do_pcm_hwsync (struct snd_pcm_substream*) ;
 scalar_t__ rewind_appl_ptr (struct snd_pcm_substream*,int ,int ) ;
 int snd_pcm_hw_avail (struct snd_pcm_substream*) ;
 int snd_pcm_stream_lock_irq (struct snd_pcm_substream*) ;
 int snd_pcm_stream_unlock_irq (struct snd_pcm_substream*) ;

__attribute__((used)) static snd_pcm_sframes_t snd_pcm_rewind(struct snd_pcm_substream *substream,
     snd_pcm_uframes_t frames)
{
 snd_pcm_sframes_t ret;

 if (frames == 0)
  return 0;

 snd_pcm_stream_lock_irq(substream);
 ret = do_pcm_hwsync(substream);
 if (!ret)
  ret = rewind_appl_ptr(substream, frames,
          snd_pcm_hw_avail(substream));
 snd_pcm_stream_unlock_irq(substream);
 return ret;
}
