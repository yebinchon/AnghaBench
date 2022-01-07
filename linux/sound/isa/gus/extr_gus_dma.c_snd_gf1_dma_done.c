
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * dma_data_synth_last; int dma_data_pcm_last; struct snd_gf1_dma_block* dma_data_synth; struct snd_gf1_dma_block* dma_data_pcm; int dma1; int dma_shared; } ;
struct snd_gus_card {int dma_mutex; TYPE_1__ gf1; } ;
struct snd_gf1_dma_block {struct snd_gf1_dma_block* next; } ;


 int SNDRV_GF1_HANDLER_DMA_WRITE ;
 int kfree (struct snd_gf1_dma_block*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_dma_disable (int ) ;
 int snd_gf1_dma_ack (struct snd_gus_card*) ;
 int snd_gf1_set_default_handlers (struct snd_gus_card*,int ) ;

int snd_gf1_dma_done(struct snd_gus_card * gus)
{
 struct snd_gf1_dma_block *block;

 mutex_lock(&gus->dma_mutex);
 gus->gf1.dma_shared--;
 if (!gus->gf1.dma_shared) {
  snd_dma_disable(gus->gf1.dma1);
  snd_gf1_set_default_handlers(gus, SNDRV_GF1_HANDLER_DMA_WRITE);
  snd_gf1_dma_ack(gus);
  while ((block = gus->gf1.dma_data_pcm)) {
   gus->gf1.dma_data_pcm = block->next;
   kfree(block);
  }
  while ((block = gus->gf1.dma_data_synth)) {
   gus->gf1.dma_data_synth = block->next;
   kfree(block);
  }
  gus->gf1.dma_data_pcm_last =
  gus->gf1.dma_data_synth_last = ((void*)0);
 }
 mutex_unlock(&gus->dma_mutex);
 return 0;
}
