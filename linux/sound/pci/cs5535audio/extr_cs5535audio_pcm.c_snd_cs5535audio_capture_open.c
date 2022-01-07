
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct TYPE_3__ {int rates; } ;
struct snd_pcm_runtime {int * private_data; TYPE_1__ hw; } ;
struct cs5535audio {TYPE_2__* ac97; int * dmas; struct snd_pcm_substream* capture_substream; } ;
struct TYPE_4__ {int * rates; } ;


 size_t AC97_RATES_ADC ;
 size_t CS5535AUDIO_DMA_CAPTURE ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 int olpc_capture_open (TYPE_2__*) ;
 TYPE_1__ snd_cs5535audio_capture ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 int snd_pcm_limit_hw_rates (struct snd_pcm_runtime*) ;
 struct cs5535audio* snd_pcm_substream_chip (struct snd_pcm_substream*) ;

__attribute__((used)) static int snd_cs5535audio_capture_open(struct snd_pcm_substream *substream)
{
 int err;
 struct cs5535audio *cs5535au = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;

 runtime->hw = snd_cs5535audio_capture;
 runtime->hw.rates = cs5535au->ac97->rates[AC97_RATES_ADC];
 snd_pcm_limit_hw_rates(runtime);
 cs5535au->capture_substream = substream;
 runtime->private_data = &(cs5535au->dmas[CS5535AUDIO_DMA_CAPTURE]);
 if ((err = snd_pcm_hw_constraint_integer(runtime,
      SNDRV_PCM_HW_PARAM_PERIODS)) < 0)
  return err;
 olpc_capture_open(cs5535au->ac97);
 return 0;
}
