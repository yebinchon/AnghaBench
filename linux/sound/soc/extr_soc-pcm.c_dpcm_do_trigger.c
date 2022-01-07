
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dpcm {TYPE_2__* be; } ;
struct snd_pcm_substream {int dummy; } ;
struct TYPE_4__ {int dev; TYPE_1__* dai_link; } ;
struct TYPE_3__ {int name; } ;


 int dev_dbg (int ,char*,int ,int) ;
 int dev_err (int ,char*,int) ;
 int soc_pcm_trigger (struct snd_pcm_substream*,int) ;

__attribute__((used)) static int dpcm_do_trigger(struct snd_soc_dpcm *dpcm,
  struct snd_pcm_substream *substream, int cmd)
{
 int ret;

 dev_dbg(dpcm->be->dev, "ASoC: trigger BE %s cmd %d\n",
   dpcm->be->dai_link->name, cmd);

 ret = soc_pcm_trigger(substream, cmd);
 if (ret < 0)
  dev_err(dpcm->be->dev,"ASoC: trigger BE failed %d\n", ret);

 return ret;
}
