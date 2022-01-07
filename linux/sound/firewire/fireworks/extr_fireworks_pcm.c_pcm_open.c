
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {TYPE_2__* runtime; struct snd_efw* private_data; } ;
struct snd_efw {int rx_stream; int tx_stream; } ;
typedef enum snd_efw_clock_source { ____Placeholder_snd_efw_clock_source } snd_efw_clock_source ;
struct TYPE_3__ {unsigned int rate_min; unsigned int rate_max; } ;
struct TYPE_4__ {TYPE_1__ hw; } ;


 int SND_EFW_CLOCK_SOURCE_INTERNAL ;
 scalar_t__ amdtp_stream_pcm_running (int *) ;
 int pcm_init_hw_params (struct snd_efw*,struct snd_pcm_substream*) ;
 int snd_efw_command_get_clock_source (struct snd_efw*,int*) ;
 int snd_efw_command_get_sampling_rate (struct snd_efw*,unsigned int*) ;
 int snd_efw_stream_lock_release (struct snd_efw*) ;
 int snd_efw_stream_lock_try (struct snd_efw*) ;
 int snd_pcm_set_sync (struct snd_pcm_substream*) ;

__attribute__((used)) static int pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_efw *efw = substream->private_data;
 unsigned int sampling_rate;
 enum snd_efw_clock_source clock_source;
 int err;

 err = snd_efw_stream_lock_try(efw);
 if (err < 0)
  goto end;

 err = pcm_init_hw_params(efw, substream);
 if (err < 0)
  goto err_locked;

 err = snd_efw_command_get_clock_source(efw, &clock_source);
 if (err < 0)
  goto err_locked;





 if ((clock_source != SND_EFW_CLOCK_SOURCE_INTERNAL) ||
     amdtp_stream_pcm_running(&efw->tx_stream) ||
     amdtp_stream_pcm_running(&efw->rx_stream)) {
  err = snd_efw_command_get_sampling_rate(efw, &sampling_rate);
  if (err < 0)
   goto err_locked;
  substream->runtime->hw.rate_min = sampling_rate;
  substream->runtime->hw.rate_max = sampling_rate;
 }

 snd_pcm_set_sync(substream);
end:
 return err;
err_locked:
 snd_efw_stream_lock_release(efw);
 return err;
}
