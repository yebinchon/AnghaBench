
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_private_data; int dma_ack; struct snd_gf1_dma_block* dma_data_synth; struct snd_gf1_dma_block* dma_data_synth_last; struct snd_gf1_dma_block* dma_data_pcm; struct snd_gf1_dma_block* dma_data_pcm_last; } ;
struct snd_gus_card {TYPE_1__ gf1; } ;
struct snd_gf1_dma_block {int private_data; int ack; struct snd_gf1_dma_block* next; } ;



__attribute__((used)) static struct snd_gf1_dma_block *snd_gf1_dma_next_block(struct snd_gus_card * gus)
{
 struct snd_gf1_dma_block *block;


 if (gus->gf1.dma_data_pcm) {
  block = gus->gf1.dma_data_pcm;
  if (gus->gf1.dma_data_pcm_last == block) {
   gus->gf1.dma_data_pcm =
   gus->gf1.dma_data_pcm_last = ((void*)0);
  } else {
   gus->gf1.dma_data_pcm = block->next;
  }
 } else if (gus->gf1.dma_data_synth) {
  block = gus->gf1.dma_data_synth;
  if (gus->gf1.dma_data_synth_last == block) {
   gus->gf1.dma_data_synth =
   gus->gf1.dma_data_synth_last = ((void*)0);
  } else {
   gus->gf1.dma_data_synth = block->next;
  }
 } else {
  block = ((void*)0);
 }
 if (block) {
  gus->gf1.dma_ack = block->ack;
  gus->gf1.dma_private_data = block->private_data;
 }
 return block;
}
