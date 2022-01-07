
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_addr; scalar_t__ dma_area; int format; struct gus_pcm_private* private_data; } ;
struct snd_gf1_dma_block {unsigned int addr; unsigned int count; int ack; struct gus_pcm_private* private_data; scalar_t__ buf_addr; scalar_t__ buffer; int cmd; } ;
struct gus_pcm_private {int dma_count; int gus; } ;
typedef int block ;


 int SNDRV_GF1_DMA_16BIT ;
 int SNDRV_GF1_DMA_IRQ ;
 int SNDRV_GF1_DMA_UNSIGNED ;
 int atomic_inc (int *) ;
 int memset (struct snd_gf1_dma_block*,int ,int) ;
 int snd_gf1_dma_transfer_block (int ,struct snd_gf1_dma_block*,int ,int ) ;
 int snd_gf1_pcm_block_change_ack ;
 scalar_t__ snd_pcm_format_unsigned (int ) ;
 int snd_pcm_format_width (int ) ;

__attribute__((used)) static int snd_gf1_pcm_block_change(struct snd_pcm_substream *substream,
        unsigned int offset,
        unsigned int addr,
        unsigned int count)
{
 struct snd_gf1_dma_block block;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct gus_pcm_private *pcmp = runtime->private_data;

 count += offset & 31;
 offset &= ~31;




 memset(&block, 0, sizeof(block));
 block.cmd = SNDRV_GF1_DMA_IRQ;
 if (snd_pcm_format_unsigned(runtime->format))
  block.cmd |= SNDRV_GF1_DMA_UNSIGNED;
 if (snd_pcm_format_width(runtime->format) == 16)
  block.cmd |= SNDRV_GF1_DMA_16BIT;
 block.addr = addr & ~31;
 block.buffer = runtime->dma_area + offset;
 block.buf_addr = runtime->dma_addr + offset;
 block.count = count;
 block.private_data = pcmp;
 block.ack = snd_gf1_pcm_block_change_ack;
 if (!snd_gf1_dma_transfer_block(pcmp->gus, &block, 0, 0))
  atomic_inc(&pcmp->dma_count);
 return 0;
}
