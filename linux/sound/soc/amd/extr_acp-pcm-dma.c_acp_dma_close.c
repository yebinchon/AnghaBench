
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct audio_substream_data* private_data; } ;
struct audio_substream_data {int i2s_instance; } ;
struct audio_drv_data {int acp_mmio; int * capture_i2sbt_stream; int * play_i2sbt_stream; int * capture_i2ssp_stream; int * play_i2ssp_stream; int asic_type; } ;


 int CHIP_STONEY ;
 int DRV_NAME ;


 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int acp_reg_write (int ,int ,int ) ;
 int acp_set_sram_bank_state (int ,int,int) ;
 struct audio_drv_data* dev_get_drvdata (int ) ;
 int kfree (struct audio_substream_data*) ;
 int mmACP_EXTERNAL_INTR_ENB ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int acp_dma_close(struct snd_pcm_substream *substream)
{
 u16 bank;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct audio_substream_data *rtd = runtime->private_data;
 struct snd_soc_pcm_runtime *prtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(prtd,
            DRV_NAME);
 struct audio_drv_data *adata = dev_get_drvdata(component->dev);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  switch (rtd->i2s_instance) {
  case 129:
   adata->play_i2sbt_stream = ((void*)0);
   break;
  case 128:
  default:
   adata->play_i2ssp_stream = ((void*)0);







   if (adata->asic_type != CHIP_STONEY) {
    for (bank = 1; bank <= 4; bank++)
     acp_set_sram_bank_state(adata->acp_mmio,
        bank, 0);
   }
  }
 } else {
  switch (rtd->i2s_instance) {
  case 129:
   adata->capture_i2sbt_stream = ((void*)0);
   break;
  case 128:
  default:
   adata->capture_i2ssp_stream = ((void*)0);
   if (adata->asic_type != CHIP_STONEY) {
    for (bank = 5; bank <= 8; bank++)
     acp_set_sram_bank_state(adata->acp_mmio,
        bank, 0);
   }
  }
 }





 if (!adata->play_i2ssp_stream && !adata->capture_i2ssp_stream &&
     !adata->play_i2sbt_stream && !adata->capture_i2sbt_stream)
  acp_reg_write(0, adata->acp_mmio, mmACP_EXTERNAL_INTR_ENB);
 kfree(rtd);
 return 0;
}
