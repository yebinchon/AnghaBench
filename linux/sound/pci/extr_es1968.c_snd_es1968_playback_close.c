
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* runtime; } ;
struct esschan {int * apu; int list; } ;
struct es1968 {int substream_lock; } ;
struct TYPE_2__ {struct esschan* private_data; } ;


 int kfree (struct esschan*) ;
 int list_del (int *) ;
 int snd_es1968_free_apu_pair (struct es1968*,int ) ;
 struct es1968* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_es1968_playback_close(struct snd_pcm_substream *substream)
{
 struct es1968 *chip = snd_pcm_substream_chip(substream);
 struct esschan *es;

 if (substream->runtime->private_data == ((void*)0))
  return 0;
 es = substream->runtime->private_data;
 spin_lock_irq(&chip->substream_lock);
 list_del(&es->list);
 spin_unlock_irq(&chip->substream_lock);
 snd_es1968_free_apu_pair(chip, es->apu[0]);
 kfree(es);

 return 0;
}
