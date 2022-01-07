
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {int dev; TYPE_2__* dpcm; TYPE_1__* dai_link; } ;
struct snd_pcm_substream {int stream; struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {int dummy; } ;
struct TYPE_4__ {int state; } ;
struct TYPE_3__ {int name; } ;


 int SND_SOC_DPCM_STATE_OPEN ;
 int SND_SOC_DPCM_UPDATE_FE ;
 int SND_SOC_DPCM_UPDATE_NO ;
 int dev_dbg (int ,char*,int ) ;
 int dev_err (int ,char*,int) ;
 int dpcm_apply_symmetry (struct snd_pcm_substream*,int) ;
 int dpcm_be_dai_startup (struct snd_soc_pcm_runtime*,int) ;
 int dpcm_be_dai_startup_unwind (struct snd_soc_pcm_runtime*,int) ;
 int dpcm_set_fe_runtime (struct snd_pcm_substream*) ;
 int dpcm_set_fe_update_state (struct snd_soc_pcm_runtime*,int,int ) ;
 int snd_pcm_limit_hw_rates (struct snd_pcm_runtime*) ;
 int soc_pcm_open (struct snd_pcm_substream*) ;

__attribute__((used)) static int dpcm_fe_dai_startup(struct snd_pcm_substream *fe_substream)
{
 struct snd_soc_pcm_runtime *fe = fe_substream->private_data;
 struct snd_pcm_runtime *runtime = fe_substream->runtime;
 int stream = fe_substream->stream, ret = 0;

 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_FE);

 ret = dpcm_be_dai_startup(fe, fe_substream->stream);
 if (ret < 0) {
  dev_err(fe->dev,"ASoC: failed to start some BEs %d\n", ret);
  goto be_err;
 }

 dev_dbg(fe->dev, "ASoC: open FE %s\n", fe->dai_link->name);


 ret = soc_pcm_open(fe_substream);
 if (ret < 0) {
  dev_err(fe->dev,"ASoC: failed to start FE %d\n", ret);
  goto unwind;
 }

 fe->dpcm[stream].state = SND_SOC_DPCM_STATE_OPEN;

 dpcm_set_fe_runtime(fe_substream);
 snd_pcm_limit_hw_rates(runtime);

 ret = dpcm_apply_symmetry(fe_substream, stream);
 if (ret < 0) {
  dev_err(fe->dev, "ASoC: failed to apply dpcm symmetry %d\n",
   ret);
  goto unwind;
 }

 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_NO);
 return 0;

unwind:
 dpcm_be_dai_startup_unwind(fe, fe_substream->stream);
be_err:
 dpcm_set_fe_update_state(fe, stream, SND_SOC_DPCM_UPDATE_NO);
 return ret;
}
