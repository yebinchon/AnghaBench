
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_4__ {int buffer_bytes_max; int period_bytes_max; int rates; } ;
struct snd_pcm_runtime {struct ichdev* private_data; TYPE_2__ hw; } ;
struct intel8x0 {scalar_t__ device_type; } ;
struct ichdev {TYPE_1__* pcm; struct snd_pcm_substream* substream; } ;
struct TYPE_3__ {int rates; } ;


 scalar_t__ DEVICE_SIS ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 TYPE_2__ snd_intel8x0_stream ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_limit_hw_rates (struct snd_pcm_runtime*) ;
 struct intel8x0* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_intel8x0_pcm_open(struct snd_pcm_substream *substream, struct ichdev *ichdev)
{
 struct intel8x0 *chip = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 int err;

 ichdev->substream = substream;
 runtime->hw = snd_intel8x0_stream;
 runtime->hw.rates = ichdev->pcm->rates;
 snd_pcm_limit_hw_rates(runtime);
 if (chip->device_type == DEVICE_SIS) {
  runtime->hw.buffer_bytes_max = 64*1024;
  runtime->hw.period_bytes_max = 64*1024;
 }
 if ((err = snd_pcm_hw_constraint_integer(runtime, SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
  return err;
 runtime->private_data = ichdev;
 return 0;
}
