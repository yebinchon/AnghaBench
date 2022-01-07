
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct soc_tplg {TYPE_2__* comp; int ops; int index; } ;
struct snd_soc_tplg_stream_caps {int dummy; } ;
struct snd_soc_tplg_pcm {scalar_t__ compress; struct snd_soc_tplg_stream_caps* caps; scalar_t__ capture; scalar_t__ playback; int dai_id; int dai_name; } ;
struct snd_soc_pcm_stream {struct snd_soc_dai_driver* stream_name; } ;
struct TYPE_3__ {int list; int type; int ops; int index; } ;
struct snd_soc_dai_driver {TYPE_1__ dobj; struct snd_soc_dai_driver* name; struct snd_soc_pcm_stream capture; struct snd_soc_pcm_stream playback; int compress_new; int id; } ;
struct TYPE_4__ {int dobj_list; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int SND_SOC_DOBJ_PCM ;
 size_t SND_SOC_TPLG_STREAM_CAPTURE ;
 size_t SND_SOC_TPLG_STREAM_PLAYBACK ;
 int dev_err (int ,char*) ;
 int kfree (struct snd_soc_dai_driver*) ;
 struct snd_soc_dai_driver* kstrdup (int ,int ) ;
 struct snd_soc_dai_driver* kzalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int list_add (int *,int *) ;
 int set_stream_info (struct snd_soc_pcm_stream*,struct snd_soc_tplg_stream_caps*) ;
 int snd_soc_new_compress ;
 int snd_soc_register_dai (TYPE_2__*,struct snd_soc_dai_driver*) ;
 int soc_tplg_dai_load (struct soc_tplg*,struct snd_soc_dai_driver*,struct snd_soc_tplg_pcm*,int *) ;
 scalar_t__ strlen (int ) ;

__attribute__((used)) static int soc_tplg_dai_create(struct soc_tplg *tplg,
 struct snd_soc_tplg_pcm *pcm)
{
 struct snd_soc_dai_driver *dai_drv;
 struct snd_soc_pcm_stream *stream;
 struct snd_soc_tplg_stream_caps *caps;
 int ret;

 dai_drv = kzalloc(sizeof(struct snd_soc_dai_driver), GFP_KERNEL);
 if (dai_drv == ((void*)0))
  return -ENOMEM;

 if (strlen(pcm->dai_name))
  dai_drv->name = kstrdup(pcm->dai_name, GFP_KERNEL);
 dai_drv->id = le32_to_cpu(pcm->dai_id);

 if (pcm->playback) {
  stream = &dai_drv->playback;
  caps = &pcm->caps[SND_SOC_TPLG_STREAM_PLAYBACK];
  set_stream_info(stream, caps);
 }

 if (pcm->capture) {
  stream = &dai_drv->capture;
  caps = &pcm->caps[SND_SOC_TPLG_STREAM_CAPTURE];
  set_stream_info(stream, caps);
 }

 if (pcm->compress)
  dai_drv->compress_new = snd_soc_new_compress;


 ret = soc_tplg_dai_load(tplg, dai_drv, pcm, ((void*)0));
 if (ret < 0) {
  dev_err(tplg->comp->dev, "ASoC: DAI loading failed\n");
  kfree(dai_drv->playback.stream_name);
  kfree(dai_drv->capture.stream_name);
  kfree(dai_drv->name);
  kfree(dai_drv);
  return ret;
 }

 dai_drv->dobj.index = tplg->index;
 dai_drv->dobj.ops = tplg->ops;
 dai_drv->dobj.type = SND_SOC_DOBJ_PCM;
 list_add(&dai_drv->dobj.list, &tplg->comp->dobj_list);


 return snd_soc_register_dai(tplg->comp, dai_drv);
}
