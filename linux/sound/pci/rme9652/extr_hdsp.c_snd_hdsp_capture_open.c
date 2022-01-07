
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int rate_max; int rates; int channels_max; int channels_min; } ;
struct snd_pcm_runtime {TYPE_1__ hw; int dma_bytes; int dma_area; } ;
struct hdsp {scalar_t__ io_type; int ss_in_channels; int qs_in_channels; int lock; struct snd_pcm_substream* capture_substream; int capture_pid; int capture_buffer; } ;
struct TYPE_4__ {int pid; } ;


 int EIO ;
 scalar_t__ H9632 ;
 int HDSP_DMA_AREA_BYTES ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 int SNDRV_PCM_RATE_KNOT ;
 TYPE_2__* current ;
 scalar_t__ hdsp_check_for_firmware (struct hdsp*,int) ;
 scalar_t__ hdsp_check_for_iobox (struct hdsp*) ;
 int hdsp_hw_constraints_9632_sample_rates ;
 int hdsp_hw_constraints_period_sizes ;
 TYPE_1__ snd_hdsp_capture_subinfo ;
 int snd_hdsp_hw_rule_in_channels ;
 int snd_hdsp_hw_rule_in_channels_rate ;
 int snd_hdsp_hw_rule_rate_in_channels ;
 int snd_pcm_hw_constraint_list (struct snd_pcm_runtime*,int ,int ,int *) ;
 int snd_pcm_hw_constraint_msbits (struct snd_pcm_runtime*,int ,int,int) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct hdsp*,int ,int) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;
 struct hdsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_capture_open(struct snd_pcm_substream *substream)
{
 struct hdsp *hdsp = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 if (hdsp_check_for_iobox (hdsp))
  return -EIO;

 if (hdsp_check_for_firmware(hdsp, 1))
  return -EIO;

 spin_lock_irq(&hdsp->lock);

 snd_pcm_set_sync(substream);

 runtime->hw = snd_hdsp_capture_subinfo;
 runtime->dma_area = hdsp->capture_buffer;
 runtime->dma_bytes = HDSP_DMA_AREA_BYTES;

 hdsp->capture_pid = current->pid;
 hdsp->capture_substream = substream;

 spin_unlock_irq(&hdsp->lock);

 snd_pcm_hw_constraint_msbits(runtime, 0, 32, 24);
 snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_PERIOD_SIZE, &hdsp_hw_constraints_period_sizes);
 if (hdsp->io_type == H9632) {
  runtime->hw.channels_min = hdsp->qs_in_channels;
  runtime->hw.channels_max = hdsp->ss_in_channels;
  runtime->hw.rate_max = 192000;
  runtime->hw.rates = SNDRV_PCM_RATE_KNOT;
  snd_pcm_hw_constraint_list(runtime, 0, SNDRV_PCM_HW_PARAM_RATE, &hdsp_hw_constraints_9632_sample_rates);
 }
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        snd_hdsp_hw_rule_in_channels, hdsp,
        SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_CHANNELS,
        snd_hdsp_hw_rule_in_channels_rate, hdsp,
        SNDRV_PCM_HW_PARAM_RATE, -1);
 snd_pcm_hw_rule_add(runtime, 0, SNDRV_PCM_HW_PARAM_RATE,
        snd_hdsp_hw_rule_rate_in_channels, hdsp,
        SNDRV_PCM_HW_PARAM_CHANNELS, -1);
 return 0;
}
