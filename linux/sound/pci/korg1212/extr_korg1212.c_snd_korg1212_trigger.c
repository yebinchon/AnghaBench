
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_korg1212 {size_t cardState; int lock; int running; } ;


 int EINVAL ;
 int K1212_DEBUG_PRINTK (char*,int ,int) ;


 int snd_korg1212_StopPlay (struct snd_korg1212*) ;
 int snd_korg1212_TriggerPlay (struct snd_korg1212*) ;
 struct snd_korg1212* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_trigger(struct snd_pcm_substream *substream,
                           int cmd)
{
        struct snd_korg1212 *korg1212 = snd_pcm_substream_chip(substream);
 int rc;

 K1212_DEBUG_PRINTK("K1212_DEBUG: snd_korg1212_trigger [%s] cmd=%d\n",
      stateName[korg1212->cardState], cmd);

 spin_lock(&korg1212->lock);
        switch (cmd) {
                case 129:






                        korg1212->running++;
                        rc = snd_korg1212_TriggerPlay(korg1212);
                        break;

                case 128:






                        korg1212->running--;
                        rc = snd_korg1212_StopPlay(korg1212);
                        break;

                default:
   rc = 1;
   break;
        }
 spin_unlock(&korg1212->lock);
        return rc ? -EINVAL : 0;
}
