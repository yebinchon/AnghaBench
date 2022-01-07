
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {int * ops; struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {scalar_t__ dma_bytes; scalar_t__ dma_addr; int * dma_area; struct snd_cs46xx_pcm* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_4__ {int * area; scalar_t__ bytes; scalar_t__ addr; } ;
struct snd_cs46xx_pcm {scalar_t__ pcm_channel_id; TYPE_2__ hw_buf; int pcm_channel; } ;
struct snd_cs46xx {int spos_mutex; TYPE_1__* card; } ;
struct TYPE_3__ {int dev; } ;


 scalar_t__ CS46XX_FRAGS ;
 scalar_t__ DSP_IEC958_CHANNEL ;
 scalar_t__ DSP_PCM_CENTER_LFE_CHANNEL ;
 scalar_t__ DSP_PCM_MAIN_CHANNEL ;
 scalar_t__ DSP_PCM_REAR_CHANNEL ;
 int EINVAL ;
 int ENXIO ;
 scalar_t__ _cs46xx_adjust_sample_rate (struct snd_cs46xx*,struct snd_cs46xx_pcm*,int) ;
 scalar_t__ cs46xx_dsp_pcm_channel_set_period (struct snd_cs46xx*,int ,int) ;
 int dev_dbg (int ,char*,int,scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_buffer_bytes (struct snd_pcm_hw_params*) ;
 int params_period_bytes (struct snd_pcm_hw_params*) ;
 scalar_t__ params_periods (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int snd_BUG () ;
 scalar_t__ snd_BUG_ON (int) ;
 int snd_cs46xx_playback_clfe_ops ;
 int snd_cs46xx_playback_iec958_ops ;
 int snd_cs46xx_playback_indirect_clfe_ops ;
 int snd_cs46xx_playback_indirect_iec958_ops ;
 int snd_cs46xx_playback_indirect_ops ;
 int snd_cs46xx_playback_indirect_rear_ops ;
 int snd_cs46xx_playback_ops ;
 int snd_cs46xx_playback_rear_ops ;
 int snd_pcm_lib_free_pages (struct snd_pcm_substream*) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct snd_cs46xx* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs46xx_playback_hw_params(struct snd_pcm_substream *substream,
      struct snd_pcm_hw_params *hw_params)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_cs46xx_pcm *cpcm;
 int err;





 cpcm = runtime->private_data;
 if (params_periods(hw_params) == CS46XX_FRAGS) {
  if (runtime->dma_area != cpcm->hw_buf.area)
   snd_pcm_lib_free_pages(substream);
  runtime->dma_area = cpcm->hw_buf.area;
  runtime->dma_addr = cpcm->hw_buf.addr;
  runtime->dma_bytes = cpcm->hw_buf.bytes;
  substream->ops = &snd_cs46xx_playback_ops;


 } else {
  if (runtime->dma_area == cpcm->hw_buf.area) {
   runtime->dma_area = ((void*)0);
   runtime->dma_addr = 0;
   runtime->dma_bytes = 0;
  }
  if ((err = snd_pcm_lib_malloc_pages(substream, params_buffer_bytes(hw_params))) < 0) {



   return err;
  }
  substream->ops = &snd_cs46xx_playback_indirect_ops;


 }





 return 0;
}
