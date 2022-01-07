
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
struct TYPE_5__ {int state; } ;
struct TYPE_4__ {int name; } ;


 int SND_SOC_CARD_CLASS_RUNTIME ;
 int SND_SOC_DPCM_STATE_HW_FREE ;
 int SND_SOC_DPCM_UPDATE_FE ;
 int SND_SOC_DPCM_UPDATE_NO ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int ) ;
 int dpcm_be_dai_hw_free (struct snd_soc_pcm_runtime*,int) ;
 int dpcm_set_fe_update_state (struct snd_soc_pcm_runtime*,int,int ) ;
 int mutex_lock_nested (int *,int ) ;
 int mutex_unlock (int *) ;
 int soc_pcm_hw_free (struct snd_pcm_substream*) ;

__attribute__((used)) static int dpcm_fe_dai_hw_free(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *fe = substream->private_data;
 int err, stream = substream->stream;

 mutex_lock_nested(&fe->card->mutex, SND_SOC_CARD_CLASS_RUNTIME);
 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_FE);

 dev_dbg(fe->dev, "ASoC: hw_free FE %s\n", fe->dai_link->name);


 err = soc_pcm_hw_free(substream);
 if (err < 0)
  dev_err(fe->dev,"ASoC: hw_free FE %s failed\n",
   fe->dai_link->name);



 err = dpcm_be_dai_hw_free(fe, stream);

 fe->dpcm[stream].state = SND_SOC_DPCM_STATE_HW_FREE;
 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_NO);

 mutex_unlock(&fe->card->mutex);
 return 0;
}
