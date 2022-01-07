
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_pcm_runtime {TYPE_2__* dpcm; TYPE_1__* dai_link; int dev; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
typedef enum snd_soc_dpcm_trigger { ____Placeholder_snd_soc_dpcm_trigger } snd_soc_dpcm_trigger ;
struct TYPE_4__ {int runtime_update; int state; } ;
struct TYPE_3__ {int* trigger; int name; } ;


 int EINVAL ;






 int SND_SOC_DPCM_STATE_PAUSED ;
 int SND_SOC_DPCM_STATE_START ;
 int SND_SOC_DPCM_STATE_STOP ;



 int SND_SOC_DPCM_UPDATE_FE ;
 int SND_SOC_DPCM_UPDATE_NO ;
 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int,...) ;
 int dpcm_be_dai_trigger (struct snd_soc_pcm_runtime*,int,int) ;
 int soc_pcm_bespoke_trigger (struct snd_pcm_substream*,int) ;
 int soc_pcm_trigger (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int dpcm_fe_dai_do_trigger(struct snd_pcm_substream *substream, int cmd)
{
 struct snd_soc_pcm_runtime *fe = substream->private_data;
 int stream = substream->stream, ret;
 enum snd_soc_dpcm_trigger trigger = fe->dai_link->trigger[stream];

 fe->dpcm[stream].runtime_update = SND_SOC_DPCM_UPDATE_FE;

 switch (trigger) {
 case 128:


  dev_dbg(fe->dev, "ASoC: pre trigger FE %s cmd %d\n",
    fe->dai_link->name, cmd);

  ret = soc_pcm_trigger(substream, cmd);
  if (ret < 0) {
   dev_err(fe->dev,"ASoC: trigger FE failed %d\n", ret);
   goto out;
  }

  ret = dpcm_be_dai_trigger(fe, substream->stream, cmd);
  break;
 case 129:


  ret = dpcm_be_dai_trigger(fe, substream->stream, cmd);
  if (ret < 0) {
   dev_err(fe->dev,"ASoC: trigger FE failed %d\n", ret);
   goto out;
  }

  dev_dbg(fe->dev, "ASoC: post trigger FE %s cmd %d\n",
    fe->dai_link->name, cmd);

  ret = soc_pcm_trigger(substream, cmd);
  break;
 case 130:


  dev_dbg(fe->dev, "ASoC: bespoke trigger FE %s cmd %d\n",
    fe->dai_link->name, cmd);

  ret = soc_pcm_bespoke_trigger(substream, cmd);
  if (ret < 0) {
   dev_err(fe->dev,"ASoC: trigger FE failed %d\n", ret);
   goto out;
  }
  break;
 default:
  dev_err(fe->dev, "ASoC: invalid trigger cmd %d for %s\n", cmd,
    fe->dai_link->name);
  ret = -EINVAL;
  goto out;
 }

 switch (cmd) {
 case 133:
 case 134:
 case 135:
  fe->dpcm[stream].state = SND_SOC_DPCM_STATE_START;
  break;
 case 132:
 case 131:
  fe->dpcm[stream].state = SND_SOC_DPCM_STATE_STOP;
  break;
 case 136:
  fe->dpcm[stream].state = SND_SOC_DPCM_STATE_PAUSED;
  break;
 }

out:
 fe->dpcm[stream].runtime_update = SND_SOC_DPCM_UPDATE_NO;
 return ret;
}
