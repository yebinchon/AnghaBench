
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_soc_dai {int dev; } ;
struct snd_pcm_substream {TYPE_2__* runtime; int stream; } ;
struct skl_module_cfg {TYPE_3__* pipe; } ;
struct skl_dev {int dummy; } ;
struct TYPE_6__ {int passthru; } ;
struct TYPE_5__ {TYPE_1__* status; } ;
struct TYPE_4__ {scalar_t__ state; } ;


 scalar_t__ SNDRV_PCM_STATE_XRUN ;
 struct skl_dev* get_skl_ctx (int ) ;
 int skl_reset_pipe (struct skl_dev*,TYPE_3__*) ;
 struct skl_module_cfg* skl_tplg_be_get_cpr_module (struct snd_soc_dai*,int ) ;

__attribute__((used)) static int skl_link_pcm_prepare(struct snd_pcm_substream *substream,
  struct snd_soc_dai *dai)
{
 struct skl_dev *skl = get_skl_ctx(dai->dev);
 struct skl_module_cfg *mconfig = ((void*)0);


 mconfig = skl_tplg_be_get_cpr_module(dai, substream->stream);
 if (mconfig && !mconfig->pipe->passthru &&
  (substream->runtime->status->state == SNDRV_PCM_STATE_XRUN))
  skl_reset_pipe(skl, mconfig->pipe);

 return 0;
}
