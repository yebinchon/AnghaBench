
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; } ;
struct snd_card_aica {int channel; int * substream; int timer; int spu_dma_work; } ;
struct TYPE_2__ {struct snd_card_aica* private_data; } ;


 int del_timer (int *) ;
 int flush_work (int *) ;
 int kfree (int ) ;
 int spu_disable () ;

__attribute__((used)) static int snd_aicapcm_pcm_close(struct snd_pcm_substream
     *substream)
{
 struct snd_card_aica *dreamcastcard = substream->pcm->private_data;
 flush_work(&(dreamcastcard->spu_dma_work));
 del_timer(&dreamcastcard->timer);
 dreamcastcard->substream = ((void*)0);
 kfree(dreamcastcard->channel);
 spu_disable();
 return 0;
}
