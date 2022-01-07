
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_substream {scalar_t__ stream; struct snd_pcm_runtime* runtime; struct aaci* private_data; } ;
struct TYPE_8__ {int channels_max; int fifo_size; int rates; } ;
struct snd_pcm_runtime {TYPE_4__ hw; struct aaci_runtime* private_data; } ;
struct aaci_runtime {TYPE_2__* pcm; struct snd_pcm_substream* substream; } ;
struct aaci {int fifo_depth; int irq_lock; int users; TYPE_3__* dev; struct aaci_runtime capture; struct aaci_runtime playback; } ;
struct TYPE_7__ {int * irq; } ;
struct TYPE_6__ {TYPE_1__* r; int rates; } ;
struct TYPE_5__ {scalar_t__ slots; } ;


 int DRIVER_NAME ;
 int IRQF_SHARED ;
 int SNDRV_PCM_HW_PARAM_CHANNELS ;
 scalar_t__ SNDRV_PCM_STREAM_PLAYBACK ;
 TYPE_4__ aaci_hw_info ;
 int aaci_irq ;
 int aaci_rule_channels ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int request_irq (int ,int ,int ,int ,struct aaci*) ;
 int snd_ac97_pcm_double_rate_rules (struct snd_pcm_runtime*) ;
 int snd_pcm_hw_rule_add (struct snd_pcm_runtime*,int ,int ,int ,struct aaci*,int ,int) ;
 int snd_pcm_limit_hw_rates (struct snd_pcm_runtime*) ;

__attribute__((used)) static int aaci_pcm_open(struct snd_pcm_substream *substream)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct aaci *aaci = substream->private_data;
 struct aaci_runtime *aacirun;
 int ret = 0;

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  aacirun = &aaci->playback;
 } else {
  aacirun = &aaci->capture;
 }

 aacirun->substream = substream;
 runtime->private_data = aacirun;
 runtime->hw = aaci_hw_info;
 runtime->hw.rates = aacirun->pcm->rates;
 snd_pcm_limit_hw_rates(runtime);

 if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
  runtime->hw.channels_max = 6;


  ret = snd_pcm_hw_rule_add(substream->runtime, 0,
       SNDRV_PCM_HW_PARAM_CHANNELS,
       aaci_rule_channels, aaci,
       SNDRV_PCM_HW_PARAM_CHANNELS, -1);
  if (ret)
   return ret;

  if (aacirun->pcm->r[1].slots)
   snd_ac97_pcm_double_rate_rules(runtime);
 }






 runtime->hw.fifo_size = aaci->fifo_depth * 2;

 mutex_lock(&aaci->irq_lock);
 if (!aaci->users++) {
  ret = request_irq(aaci->dev->irq[0], aaci_irq,
      IRQF_SHARED, DRIVER_NAME, aaci);
  if (ret != 0)
   aaci->users--;
 }
 mutex_unlock(&aaci->irq_lock);

 return ret;
}
