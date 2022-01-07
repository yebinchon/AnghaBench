
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {int dev; } ;
struct snd_pcm_substream {scalar_t__ stream; struct snd_soc_pcm_runtime* private_data; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct audio_substream_data* private_data; int hw; } ;
struct audio_substream_data {int acp_mmio; } ;
struct audio_drv_data {int asic_type; int acp_mmio; int capture_i2sbt_stream; int play_i2sbt_stream; int capture_i2ssp_stream; int play_i2ssp_stream; } ;



 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int acp_pcm_hardware_capture ;
 int acp_pcm_hardware_playback ;
 int acp_reg_write (int,int ,int ) ;
 int acp_set_sram_bank_state (int ,int,int) ;
 int acp_st_pcm_hardware_capture ;
 int acp_st_pcm_hardware_playback ;
 int dev_err (int ,char*) ;
 struct audio_drv_data* dev_get_drvdata (int ) ;
 int kfree (struct audio_substream_data*) ;
 struct audio_substream_data* kzalloc (int,int ) ;
 int mmACP_EXTERNAL_INTR_ENB ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;

__attribute__((used)) static int acp_dma_open(struct snd_pcm_substream *substream)
{
 u16 bank;
 int ret = 0;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_pcm_runtime *prtd = substream->private_data;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(prtd,
            DRV_NAME);
 struct audio_drv_data *intr_data = dev_get_drvdata(component->dev);
 struct audio_substream_data *adata =
  kzalloc(sizeof(struct audio_substream_data), GFP_KERNEL);
 if (!adata)
  return -ENOMEM;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  switch (intr_data->asic_type) {
  case 128:
   runtime->hw = acp_st_pcm_hardware_playback;
   break;
  default:
   runtime->hw = acp_pcm_hardware_playback;
  }
 } else {
  switch (intr_data->asic_type) {
  case 128:
   runtime->hw = acp_st_pcm_hardware_capture;
   break;
  default:
   runtime->hw = acp_pcm_hardware_capture;
  }
 }

 ret = snd_pcm_hw_constraint_integer(runtime,
         SNDRV_PCM_HW_PARAM_PERIODS);
 if (ret < 0) {
  dev_err(component->dev, "set integer constraint failed\n");
  kfree(adata);
  return ret;
 }

 adata->acp_mmio = intr_data->acp_mmio;
 runtime->private_data = adata;







 if (!intr_data->play_i2ssp_stream && !intr_data->capture_i2ssp_stream &&
     !intr_data->play_i2sbt_stream && !intr_data->capture_i2sbt_stream)
  acp_reg_write(1, adata->acp_mmio, mmACP_EXTERNAL_INTR_ENB);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {





  if (intr_data->asic_type != 128) {
   for (bank = 1; bank <= 4; bank++)
    acp_set_sram_bank_state(intr_data->acp_mmio,
       bank, 1);
  }
 } else {
  if (intr_data->asic_type != 128) {
   for (bank = 5; bank <= 8; bank++)
    acp_set_sram_bank_state(intr_data->acp_mmio,
       bank, 1);
  }
 }

 return 0;
}
