
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_korg1212 {size_t cardState; scalar_t__ stop_pending_cnt; int lock; scalar_t__ currentBuffer; } ;


 int EAGAIN ;
 int EINVAL ;
 int K1212_DEBUG_PRINTK (char*,int ) ;
 int snd_korg1212_SetupForPlay (struct snd_korg1212*) ;
 struct snd_korg1212* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_prepare(struct snd_pcm_substream *substream)
{
        struct snd_korg1212 *korg1212 = snd_pcm_substream_chip(substream);
 int rc;

 K1212_DEBUG_PRINTK("K1212_DEBUG: snd_korg1212_prepare [%s]\n",
      stateName[korg1212->cardState]);

 spin_lock_irq(&korg1212->lock);


 if (korg1212->stop_pending_cnt > 0) {
  K1212_DEBUG_PRINTK("K1212_DEBUG: snd_korg1212_prepare - Stop is pending... [%s]\n",
       stateName[korg1212->cardState]);
         spin_unlock_irq(&korg1212->lock);
  return -EAGAIN;





 }

        rc = snd_korg1212_SetupForPlay(korg1212);

        korg1212->currentBuffer = 0;

        spin_unlock_irq(&korg1212->lock);

 return rc ? -EINVAL : 0;
}
