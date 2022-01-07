
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct hdsp {int control_register; int creg_spdif_stream; scalar_t__ playback_pid; scalar_t__ capture_pid; scalar_t__ system_sample_rate; int period_bytes; int lock; int clock_source_locked; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {scalar_t__ stream; } ;


 int EBUSY ;
 int EIO ;
 int HDSP_SPDIFEmphasis ;
 int HDSP_SPDIFNonAudio ;
 int HDSP_SPDIFProfessional ;
 int HDSP_controlRegister ;
 int SNDRV_PCM_HW_PARAM_PERIOD_SIZE ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int _snd_pcm_hw_param_setempty (struct snd_pcm_hw_params*,int ) ;
 scalar_t__ hdsp_check_for_firmware (struct hdsp*,int) ;
 scalar_t__ hdsp_check_for_iobox (struct hdsp*) ;
 int hdsp_set_interrupt_interval (struct hdsp*,int) ;
 int hdsp_set_rate (struct hdsp*,scalar_t__,int ) ;
 int hdsp_write (struct hdsp*,int ,int) ;
 int params_period_size (struct snd_pcm_hw_params*) ;
 scalar_t__ params_rate (struct snd_pcm_hw_params*) ;
 struct hdsp* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdsp_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct hdsp *hdsp = snd_pcm_substream_chip(substream);
 int err;
 pid_t this_pid;
 pid_t other_pid;

 if (hdsp_check_for_iobox (hdsp))
  return -EIO;

 if (hdsp_check_for_firmware(hdsp, 1))
  return -EIO;

 spin_lock_irq(&hdsp->lock);

 if (substream->pstr->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  hdsp->control_register &= ~(HDSP_SPDIFProfessional | HDSP_SPDIFNonAudio | HDSP_SPDIFEmphasis);
  hdsp_write(hdsp, HDSP_controlRegister, hdsp->control_register |= hdsp->creg_spdif_stream);
  this_pid = hdsp->playback_pid;
  other_pid = hdsp->capture_pid;
 } else {
  this_pid = hdsp->capture_pid;
  other_pid = hdsp->playback_pid;
 }

 if ((other_pid > 0) && (this_pid != other_pid)) {






  if (params_rate(params) != hdsp->system_sample_rate) {
   spin_unlock_irq(&hdsp->lock);
   _snd_pcm_hw_param_setempty(params, SNDRV_PCM_HW_PARAM_RATE);
   return -EBUSY;
  }

  if (params_period_size(params) != hdsp->period_bytes / 4) {
   spin_unlock_irq(&hdsp->lock);
   _snd_pcm_hw_param_setempty(params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
   return -EBUSY;
  }



  spin_unlock_irq(&hdsp->lock);
   return 0;

 } else {
  spin_unlock_irq(&hdsp->lock);
 }




 spin_lock_irq(&hdsp->lock);
 if (! hdsp->clock_source_locked) {
  if ((err = hdsp_set_rate(hdsp, params_rate(params), 0)) < 0) {
   spin_unlock_irq(&hdsp->lock);
   _snd_pcm_hw_param_setempty(params, SNDRV_PCM_HW_PARAM_RATE);
   return err;
  }
 }
 spin_unlock_irq(&hdsp->lock);

 if ((err = hdsp_set_interrupt_interval(hdsp, params_period_size(params))) < 0) {
  _snd_pcm_hw_param_setempty(params, SNDRV_PCM_HW_PARAM_PERIOD_SIZE);
  return err;
 }

 return 0;
}
