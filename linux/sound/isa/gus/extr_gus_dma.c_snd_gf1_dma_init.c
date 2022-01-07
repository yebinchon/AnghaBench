
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_shared; int * dma_data_synth_last; int dma_data_synth; int dma_data_pcm_last; int dma_data_pcm; int interrupt_handler_dma_write; } ;
struct snd_gus_card {int dma_mutex; TYPE_1__ gf1; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_gf1_dma_interrupt ;

int snd_gf1_dma_init(struct snd_gus_card * gus)
{
 mutex_lock(&gus->dma_mutex);
 gus->gf1.dma_shared++;
 if (gus->gf1.dma_shared > 1) {
  mutex_unlock(&gus->dma_mutex);
  return 0;
 }
 gus->gf1.interrupt_handler_dma_write = snd_gf1_dma_interrupt;
 gus->gf1.dma_data_pcm =
 gus->gf1.dma_data_pcm_last =
 gus->gf1.dma_data_synth =
 gus->gf1.dma_data_synth_last = ((void*)0);
 mutex_unlock(&gus->dma_mutex);
 return 0;
}
