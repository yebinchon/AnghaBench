
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dma_flags; struct snd_gf1_dma_block* dma_data_pcm_last; struct snd_gf1_dma_block* dma_data_pcm; struct snd_gf1_dma_block* dma_data_synth_last; struct snd_gf1_dma_block* dma_data_synth; } ;
struct snd_gus_card {int dma_lock; TYPE_1__ gf1; } ;
struct snd_gf1_dma_block {scalar_t__ cmd; int count; int buf_addr; int addr; struct snd_gf1_dma_block* next; scalar_t__ buffer; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_KERNEL ;
 int SNDRV_GF1_DMA_TRIGGER ;
 int kfree (struct snd_gf1_dma_block*) ;
 struct snd_gf1_dma_block* kmalloc (int,int ) ;
 struct snd_gf1_dma_block* snd_gf1_dma_next_block (struct snd_gus_card*) ;
 int snd_gf1_dma_program (struct snd_gus_card*,int ,int ,int ,unsigned short) ;
 int snd_printdd (char*,long,...) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int snd_gf1_dma_transfer_block(struct snd_gus_card * gus,
          struct snd_gf1_dma_block * __block,
          int atomic,
          int synth)
{
 unsigned long flags;
 struct snd_gf1_dma_block *block;

 block = kmalloc(sizeof(*block), atomic ? GFP_ATOMIC : GFP_KERNEL);
 if (!block)
  return -ENOMEM;

 *block = *__block;
 block->next = ((void*)0);

 snd_printdd("addr = 0x%x, buffer = 0x%lx, count = 0x%x, cmd = 0x%x\n",
      block->addr, (long) block->buffer, block->count,
      block->cmd);

 snd_printdd("gus->gf1.dma_data_pcm_last = 0x%lx\n",
      (long)gus->gf1.dma_data_pcm_last);
 snd_printdd("gus->gf1.dma_data_pcm = 0x%lx\n",
      (long)gus->gf1.dma_data_pcm);

 spin_lock_irqsave(&gus->dma_lock, flags);
 if (synth) {
  if (gus->gf1.dma_data_synth_last) {
   gus->gf1.dma_data_synth_last->next = block;
   gus->gf1.dma_data_synth_last = block;
  } else {
   gus->gf1.dma_data_synth =
   gus->gf1.dma_data_synth_last = block;
  }
 } else {
  if (gus->gf1.dma_data_pcm_last) {
   gus->gf1.dma_data_pcm_last->next = block;
   gus->gf1.dma_data_pcm_last = block;
  } else {
   gus->gf1.dma_data_pcm =
   gus->gf1.dma_data_pcm_last = block;
  }
 }
 if (!(gus->gf1.dma_flags & SNDRV_GF1_DMA_TRIGGER)) {
  gus->gf1.dma_flags |= SNDRV_GF1_DMA_TRIGGER;
  block = snd_gf1_dma_next_block(gus);
  spin_unlock_irqrestore(&gus->dma_lock, flags);
  if (block == ((void*)0))
   return 0;
  snd_gf1_dma_program(gus, block->addr, block->buf_addr, block->count, (unsigned short) block->cmd);
  kfree(block);
  return 0;
 }
 spin_unlock_irqrestore(&gus->dma_lock, flags);
 return 0;
}
