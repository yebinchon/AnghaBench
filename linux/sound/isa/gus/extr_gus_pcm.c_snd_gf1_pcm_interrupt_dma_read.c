
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_gus_card {int * pcm_cap_substream; scalar_t__ c_period_size; int c_pos; } ;


 int SNDRV_GF1_GB_REC_DMA_CONTROL ;
 int SNDRV_PCM_TRIGGER_START ;
 int snd_gf1_i_look8 (struct snd_gus_card*,int ) ;
 int snd_gf1_i_write8 (struct snd_gus_card*,int ,int ) ;
 int snd_gf1_pcm_capture_prepare (int *) ;
 int snd_gf1_pcm_capture_trigger (int *,int ) ;
 int snd_pcm_period_elapsed (int *) ;

__attribute__((used)) static void snd_gf1_pcm_interrupt_dma_read(struct snd_gus_card * gus)
{
 snd_gf1_i_write8(gus, SNDRV_GF1_GB_REC_DMA_CONTROL, 0);
 snd_gf1_i_look8(gus, SNDRV_GF1_GB_REC_DMA_CONTROL);
 if (gus->pcm_cap_substream != ((void*)0)) {
  snd_gf1_pcm_capture_prepare(gus->pcm_cap_substream);
  snd_gf1_pcm_capture_trigger(gus->pcm_cap_substream, SNDRV_PCM_TRIGGER_START);
  gus->c_pos += gus->c_period_size;
  snd_pcm_period_elapsed(gus->pcm_cap_substream);
 }
}
