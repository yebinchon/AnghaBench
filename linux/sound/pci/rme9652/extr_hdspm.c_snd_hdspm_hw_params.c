
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; TYPE_2__* runtime; TYPE_1__* pstr; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct hdspm {scalar_t__ playback_pid; scalar_t__ capture_pid; scalar_t__ system_sample_rate; int period_bytes; int* channel_map_out; unsigned char* playback_buffer; int* channel_map_in; unsigned char* capture_buffer; scalar_t__ io_type; int control_register; TYPE_3__* card; int lock; } ;
typedef scalar_t__ pid_t ;
struct TYPE_6__ {int dev; } ;
struct TYPE_5__ {scalar_t__ dma_area; } ;
struct TYPE_4__ {scalar_t__ stream; } ;


 scalar_t__ AES32 ;
 int EBUSY ;
 int HDSPM_DMA_AREA_BYTES ;
 int HDSPM_controlRegister ;
 int HDSPM_pageAddressBufferIn ;
 int HDSPM_pageAddressBufferOut ;
 int HDSPe_FLOAT_FORMAT ;
 scalar_t__ SNDRV_PCM_FORMAT_FLOAT_LE ;
 scalar_t__ SNDRV_PCM_FORMAT_S32_LE ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int _snd_pcm_hw_param_setempty (struct snd_pcm_hw_params*,int ) ;
 int dev_dbg (int ,char*,unsigned char*) ;
 int dev_info (int ,char*,...) ;
 int hdspm_set_channel_dma_addr (struct hdspm*,struct snd_pcm_substream*,int ,int) ;
 int hdspm_set_interrupt_interval (struct hdspm*,int) ;
 int hdspm_set_rate (struct hdspm*,scalar_t__,int ) ;
 int hdspm_write (struct hdspm*,int ,int) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 scalar_t__ params_format (struct snd_pcm_hw_params*) ;
 int params_period_size (struct snd_pcm_hw_params*) ;
 scalar_t__ params_rate (struct snd_pcm_hw_params*) ;
 int snd_hdspm_enable_in (struct hdspm*,int,int) ;
 int snd_hdspm_enable_out (struct hdspm*,int,int) ;
 int snd_pcm_lib_malloc_pages (struct snd_pcm_substream*,int ) ;
 struct hdspm* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_hw_params(struct snd_pcm_substream *substream,
          struct snd_pcm_hw_params *params)
{
 struct hdspm *hdspm = snd_pcm_substream_chip(substream);
 int err;
 int i;
 pid_t this_pid;
 pid_t other_pid;

 spin_lock_irq(&hdspm->lock);

 if (substream->pstr->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  this_pid = hdspm->playback_pid;
  other_pid = hdspm->capture_pid;
 } else {
  this_pid = hdspm->capture_pid;
  other_pid = hdspm->playback_pid;
 }

 if (other_pid > 0 && this_pid != other_pid) {






  if (params_rate(params) != hdspm->system_sample_rate) {
   spin_unlock_irq(&hdspm->lock);
   _snd_pcm_hw_param_setempty(params,
     SNDRV_PCM_HW_PARAM_RATE);
   return -EBUSY;
  }

  if (params_period_size(params) != hdspm->period_bytes / 4) {
   spin_unlock_irq(&hdspm->lock);
   _snd_pcm_hw_param_setempty(params,
     SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
   return -EBUSY;
  }

 }

 spin_unlock_irq(&hdspm->lock);



 spin_lock_irq(&hdspm->lock);
 err = hdspm_set_rate(hdspm, params_rate(params), 0);
 if (err < 0) {
  dev_info(hdspm->card->dev, "err on hdspm_set_rate: %d\n", err);
  spin_unlock_irq(&hdspm->lock);
  _snd_pcm_hw_param_setempty(params,
    SNDRV_PCM_HW_PARAM_RATE);
  return err;
 }
 spin_unlock_irq(&hdspm->lock);

 err = hdspm_set_interrupt_interval(hdspm,
   params_period_size(params));
 if (err < 0) {
  dev_info(hdspm->card->dev,
    "err on hdspm_set_interrupt_interval: %d\n", err);
  _snd_pcm_hw_param_setempty(params,
    SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
  return err;
 }
 err =
  snd_pcm_lib_malloc_pages(substream, HDSPM_DMA_AREA_BYTES);
 if (err < 0) {
  dev_info(hdspm->card->dev,
    "err on snd_pcm_lib_malloc_pages: %d\n", err);
  return err;
 }

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {

  for (i = 0; i < params_channels(params); ++i) {
   int c = hdspm->channel_map_out[i];

   if (c < 0)
    continue;
   hdspm_set_channel_dma_addr(hdspm, substream,
         HDSPM_pageAddressBufferOut,
         c);
   snd_hdspm_enable_out(hdspm, c, 1);
  }

  hdspm->playback_buffer =
   (unsigned char *) substream->runtime->dma_area;
  dev_dbg(hdspm->card->dev,
   "Allocated sample buffer for playback at %p\n",
    hdspm->playback_buffer);
 } else {
  for (i = 0; i < params_channels(params); ++i) {
   int c = hdspm->channel_map_in[i];

   if (c < 0)
    continue;
   hdspm_set_channel_dma_addr(hdspm, substream,
         HDSPM_pageAddressBufferIn,
         c);
   snd_hdspm_enable_in(hdspm, c, 1);
  }

  hdspm->capture_buffer =
   (unsigned char *) substream->runtime->dma_area;
  dev_dbg(hdspm->card->dev,
   "Allocated sample buffer for capture at %p\n",
    hdspm->capture_buffer);
 }
 if (hdspm->io_type == AES32) {
  return 0;
 }



 if (SNDRV_PCM_FORMAT_FLOAT_LE == params_format(params)) {
  if (!(hdspm->control_register & HDSPe_FLOAT_FORMAT))
   dev_info(hdspm->card->dev,
     "Switching to native 32bit LE float format.\n");

  hdspm->control_register |= HDSPe_FLOAT_FORMAT;
 } else if (SNDRV_PCM_FORMAT_S32_LE == params_format(params)) {
  if (hdspm->control_register & HDSPe_FLOAT_FORMAT)
   dev_info(hdspm->card->dev,
     "Switching to native 32bit LE integer format.\n");

  hdspm->control_register &= ~HDSPe_FLOAT_FORMAT;
 }
 hdspm_write(hdspm, HDSPM_controlRegister, hdspm->control_register);

 return 0;
}
