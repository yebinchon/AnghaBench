
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_3__* card; TYPE_2__* dpcm; int dev; TYPE_1__* dai_link; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct TYPE_6__ {int mutex; } ;
struct TYPE_5__ {int state; int hw_params; } ;
struct TYPE_4__ {int name; } ;


 int SND_SOC_CARD_CLASS_RUNTIME ;
 int SND_SOC_DPCM_STATE_HW_PARAMS ;
 int SND_SOC_DPCM_UPDATE_FE ;
 int SND_SOC_DPCM_UPDATE_NO ;
 int dev_dbg (int ,char*,int ,int ,int ,int ) ;
 int dev_err (int ,char*,int) ;
 int dpcm_be_dai_hw_free (struct snd_soc_pcm_runtime*,int) ;
 int dpcm_be_dai_hw_params (struct snd_soc_pcm_runtime*,size_t) ;
 int dpcm_set_fe_update_state (struct snd_soc_pcm_runtime*,int,int ) ;
 int memcpy (int *,struct snd_pcm_hw_params*,int) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int params_channels (struct snd_pcm_hw_params*) ;
 int params_format (struct snd_pcm_hw_params*) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int soc_pcm_hw_params (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;

__attribute__((used)) static int dpcm_fe_dai_hw_params(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params)
{
 struct snd_soc_pcm_runtime *fe = substream->private_data;
 int ret, stream = substream->stream;

 mutex_lock_nested(&fe->card->mutex, SND_SOC_CARD_CLASS_RUNTIME);
 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_FE);

 memcpy(&fe->dpcm[substream->stream].hw_params, params,
   sizeof(struct snd_pcm_hw_params));
 ret = dpcm_be_dai_hw_params(fe, substream->stream);
 if (ret < 0) {
  dev_err(fe->dev,"ASoC: hw_params BE failed %d\n", ret);
  goto out;
 }

 dev_dbg(fe->dev, "ASoC: hw_params FE %s rate %d chan %x fmt %d\n",
   fe->dai_link->name, params_rate(params),
   params_channels(params), params_format(params));


 ret = soc_pcm_hw_params(substream, params);
 if (ret < 0) {
  dev_err(fe->dev,"ASoC: hw_params FE failed %d\n", ret);
  dpcm_be_dai_hw_free(fe, stream);
  } else
  fe->dpcm[stream].state = SND_SOC_DPCM_STATE_HW_PARAMS;

out:
 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_NO);
 mutex_unlock(&fe->card->mutex);
 return ret;
}
