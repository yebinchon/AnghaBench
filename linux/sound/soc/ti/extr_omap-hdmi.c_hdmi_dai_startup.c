
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {int runtime; } ;
struct hdmi_audio_data {int current_stream_lock; struct snd_pcm_substream* current_stream; int dssdev; TYPE_1__* ops; int dma_data; } ;
struct TYPE_2__ {int (* audio_startup ) (int ,int ) ;} ;


 int SNDRV_PCM_HW_PARAM_BUFFER_BYTES ;
 int SNDRV_PCM_HW_PARAM_PERIOD_BYTES ;
 struct hdmi_audio_data* card_drvdata_substream (struct snd_pcm_substream*) ;
 int dev_err (int ,char*,int) ;
 int hdmi_dai_abort ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int snd_pcm_hw_constraint_step (int ,int ,int ,int) ;
 int snd_soc_dai_set_dma_data (struct snd_soc_dai*,struct snd_pcm_substream*,int *) ;
 int stub1 (int ,int ) ;

__attribute__((used)) static int hdmi_dai_startup(struct snd_pcm_substream *substream,
       struct snd_soc_dai *dai)
{
 struct hdmi_audio_data *ad = card_drvdata_substream(substream);
 int ret;




 ret = snd_pcm_hw_constraint_step(substream->runtime, 0,
      SNDRV_PCM_HW_PARAM_PERIOD_BYTES, 128);
 if (ret < 0) {
  dev_err(dai->dev, "Could not apply period constraint: %d\n",
   ret);
  return ret;
 }
 ret = snd_pcm_hw_constraint_step(substream->runtime, 0,
      SNDRV_PCM_HW_PARAM_BUFFER_BYTES, 128);
 if (ret < 0) {
  dev_err(dai->dev, "Could not apply buffer constraint: %d\n",
   ret);
  return ret;
 }

 snd_soc_dai_set_dma_data(dai, substream, &ad->dma_data);

 mutex_lock(&ad->current_stream_lock);
 ad->current_stream = substream;
 mutex_unlock(&ad->current_stream_lock);

 ret = ad->ops->audio_startup(ad->dssdev, hdmi_dai_abort);

 if (ret) {
  mutex_lock(&ad->current_stream_lock);
  ad->current_stream = ((void*)0);
  mutex_unlock(&ad->current_stream_lock);
 }

 return ret;
}
