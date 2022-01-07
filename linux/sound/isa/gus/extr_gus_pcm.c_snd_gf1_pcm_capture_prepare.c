
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {int dma_addr; scalar_t__ rate_den; } ;
struct TYPE_2__ {int dma2; } ;
struct snd_gus_card {int c_period_size; TYPE_1__ gf1; } ;


 int DMA_MODE_READ ;
 int SNDRV_GF1_GB_RECORD_RATE ;
 int SNDRV_GF1_GB_REC_DMA_CONTROL ;
 int snd_dma_program (int ,int ,int ,int ) ;
 int snd_gf1_i_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,scalar_t__) ;
 struct snd_gus_card* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_gf1_pcm_capture_prepare(struct snd_pcm_substream *substream)
{
 struct snd_gus_card *gus = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 snd_gf1_i_write8(gus, SNDRV_GF1_GB_RECORD_RATE, runtime->rate_den - 2);
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_REC_DMA_CONTROL, 0);
 snd_gf1_i_look8(gus, SNDRV_GF1_GB_REC_DMA_CONTROL);
 snd_dma_program(gus->gf1.dma2, runtime->dma_addr, gus->c_period_size, DMA_MODE_READ);
 return 0;
}
