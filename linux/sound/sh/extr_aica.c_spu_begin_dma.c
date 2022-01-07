
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pcm; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dummy; } ;
struct snd_card_aica {int timer; int spu_dma_work; } ;
struct TYPE_2__ {struct snd_card_aica* private_data; } ;


 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int schedule_work (int *) ;

__attribute__((used)) static void spu_begin_dma(struct snd_pcm_substream *substream)
{
 struct snd_card_aica *dreamcastcard;
 struct snd_pcm_runtime *runtime;
 runtime = substream->runtime;
 dreamcastcard = substream->pcm->private_data;

 schedule_work(&(dreamcastcard->spu_dma_work));
 mod_timer(&dreamcastcard->timer, jiffies + 4);
}
