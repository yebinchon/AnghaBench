
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_3__* card; TYPE_2__* dpcm; TYPE_1__* dai_link; int dev; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_5__ {int state; int be_clients; } ;
struct TYPE_4__ {int name; } ;


 int EINVAL ;
 int SND_SOC_CARD_CLASS_RUNTIME ;
 int SND_SOC_DAPM_STREAM_START ;
 int SND_SOC_DPCM_STATE_PREPARE ;
 int SND_SOC_DPCM_UPDATE_FE ;
 int SND_SOC_DPCM_UPDATE_NO ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int ) ;
 int dpcm_be_dai_prepare (struct snd_soc_pcm_runtime*,int) ;
 int dpcm_dapm_stream_event (struct snd_soc_pcm_runtime*,int,int ) ;
 int dpcm_set_fe_update_state (struct snd_soc_pcm_runtime*,int,int ) ;
 scalar_t__ list_empty (int *) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int soc_pcm_prepare (struct snd_pcm_substream*) ;

__attribute__((used)) static int dpcm_fe_dai_prepare(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *fe = substream->private_data;
 int stream = substream->stream, ret = 0;

 mutex_lock_nested(&fe->card->mutex, SND_SOC_CARD_CLASS_RUNTIME);

 dev_dbg(fe->dev, "ASoC: prepare FE %s\n", fe->dai_link->name);

 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_FE);


 if (list_empty(&fe->dpcm[stream].be_clients)) {
  dev_err(fe->dev, "ASoC: no backend DAIs enabled for %s\n",
    fe->dai_link->name);
  ret = -EINVAL;
  goto out;
 }

 ret = dpcm_be_dai_prepare(fe, substream->stream);
 if (ret < 0)
  goto out;


 ret = soc_pcm_prepare(substream);
 if (ret < 0) {
  dev_err(fe->dev,"ASoC: prepare FE %s failed\n",
   fe->dai_link->name);
  goto out;
 }


 dpcm_dapm_stream_event(fe, stream, SND_SOC_DAPM_STREAM_START);
 fe->dpcm[stream].state = SND_SOC_DPCM_STATE_PREPARE;

out:
 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_NO);
 mutex_unlock(&fe->card->mutex);

 return ret;
}
