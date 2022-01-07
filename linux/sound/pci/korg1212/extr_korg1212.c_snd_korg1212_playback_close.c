
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_korg1212 {size_t cardState; int channels; int playback_pid; int lock; scalar_t__ periodsize; int * playback_substream; } ;


 int K1212_DEBUG_PRINTK (char*,int ) ;
 int K1212_MAX_SAMPLES ;
 int snd_korg1212_CloseCard (struct snd_korg1212*) ;
 int snd_korg1212_silence (struct snd_korg1212*,int ,int ,int ,int) ;
 struct snd_korg1212* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_playback_close(struct snd_pcm_substream *substream)
{
        unsigned long flags;
        struct snd_korg1212 *korg1212 = snd_pcm_substream_chip(substream);

 K1212_DEBUG_PRINTK("K1212_DEBUG: snd_korg1212_playback_close [%s]\n",
      stateName[korg1212->cardState]);

 snd_korg1212_silence(korg1212, 0, K1212_MAX_SAMPLES, 0, korg1212->channels * 2);

        spin_lock_irqsave(&korg1212->lock, flags);

 korg1212->playback_pid = -1;
        korg1212->playback_substream = ((void*)0);
        korg1212->periodsize = 0;

        spin_unlock_irqrestore(&korg1212->lock, flags);

 snd_korg1212_CloseCard(korg1212);
        return 0;
}
