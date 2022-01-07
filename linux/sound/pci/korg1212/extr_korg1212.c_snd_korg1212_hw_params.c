
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_1__* pstr; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_korg1212 {size_t cardState; scalar_t__ playback_pid; scalar_t__ capture_pid; int clkRate; int lock; int periodsize; int channels; } ;
typedef scalar_t__ pid_t ;
struct TYPE_2__ {scalar_t__ stream; } ;


 int EBUSY ;
 int K1212_DEBUG_PRINTK (char*,int ) ;
 int K1212_PERIOD_BYTES ;
 int SNDRV_PCM_HW_PARAM_RATE ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 int _snd_pcm_hw_param_setempty (struct snd_pcm_hw_params*,int ) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 scalar_t__ params_rate (struct snd_pcm_hw_params*) ;
 int snd_korg1212_SetRate (struct snd_korg1212*,scalar_t__) ;
 struct snd_korg1212* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int * stateName ;

__attribute__((used)) static int snd_korg1212_hw_params(struct snd_pcm_substream *substream,
                             struct snd_pcm_hw_params *params)
{
        unsigned long flags;
        struct snd_korg1212 *korg1212 = snd_pcm_substream_chip(substream);
        int err;
 pid_t this_pid;
 pid_t other_pid;

 K1212_DEBUG_PRINTK("K1212_DEBUG: snd_korg1212_hw_params [%s]\n",
      stateName[korg1212->cardState]);

        spin_lock_irqsave(&korg1212->lock, flags);

 if (substream->pstr->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  this_pid = korg1212->playback_pid;
  other_pid = korg1212->capture_pid;
 } else {
  this_pid = korg1212->capture_pid;
  other_pid = korg1212->playback_pid;
 }

 if ((other_pid > 0) && (this_pid != other_pid)) {






  if ((int)params_rate(params) != korg1212->clkRate) {
   spin_unlock_irqrestore(&korg1212->lock, flags);
   _snd_pcm_hw_param_setempty(params, SNDRV_PCM_HW_PARAM_RATE);
   return -EBUSY;
  }

         spin_unlock_irqrestore(&korg1212->lock, flags);
         return 0;
 }

        if ((err = snd_korg1212_SetRate(korg1212, params_rate(params))) < 0) {
                spin_unlock_irqrestore(&korg1212->lock, flags);
                return err;
        }

 korg1212->channels = params_channels(params);
        korg1212->periodsize = K1212_PERIOD_BYTES;

        spin_unlock_irqrestore(&korg1212->lock, flags);

        return 0;
}
