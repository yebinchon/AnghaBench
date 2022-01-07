
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct soc_tplg {TYPE_1__* comp; int dev; } ;
struct snd_soc_tplg_stream_caps {int dummy; } ;
struct snd_soc_tplg_dai {scalar_t__ flags; scalar_t__ flag_mask; struct snd_soc_tplg_stream_caps* caps; scalar_t__ capture; scalar_t__ playback; int dai_name; scalar_t__ dai_id; } ;
struct snd_soc_pcm_stream {int dummy; } ;
struct snd_soc_dai_link_component {int dai_name; } ;
struct snd_soc_dai_driver {struct snd_soc_pcm_stream capture; struct snd_soc_pcm_stream playback; } ;
struct snd_soc_dai {scalar_t__ id; struct snd_soc_dai_driver* driver; } ;
typedef int dai_component ;
struct TYPE_2__ {int dev; } ;


 int EINVAL ;
 size_t SND_SOC_TPLG_STREAM_CAPTURE ;
 size_t SND_SOC_TPLG_STREAM_PLAYBACK ;
 int dev_err (int ,char*,...) ;
 scalar_t__ le32_to_cpu (scalar_t__) ;
 int memset (struct snd_soc_dai_link_component*,int ,int) ;
 int set_dai_flags (struct snd_soc_dai_driver*,scalar_t__,scalar_t__) ;
 int set_stream_info (struct snd_soc_pcm_stream*,struct snd_soc_tplg_stream_caps*) ;
 struct snd_soc_dai* snd_soc_find_dai (struct snd_soc_dai_link_component*) ;
 int soc_tplg_dai_load (struct soc_tplg*,struct snd_soc_dai_driver*,int *,struct snd_soc_dai*) ;

__attribute__((used)) static int soc_tplg_dai_config(struct soc_tplg *tplg,
          struct snd_soc_tplg_dai *d)
{
 struct snd_soc_dai_link_component dai_component;
 struct snd_soc_dai *dai;
 struct snd_soc_dai_driver *dai_drv;
 struct snd_soc_pcm_stream *stream;
 struct snd_soc_tplg_stream_caps *caps;
 int ret;

 memset(&dai_component, 0, sizeof(dai_component));

 dai_component.dai_name = d->dai_name;
 dai = snd_soc_find_dai(&dai_component);
 if (!dai) {
  dev_err(tplg->dev, "ASoC: physical DAI %s not registered\n",
   d->dai_name);
  return -EINVAL;
 }

 if (le32_to_cpu(d->dai_id) != dai->id) {
  dev_err(tplg->dev, "ASoC: physical DAI %s id mismatch\n",
   d->dai_name);
  return -EINVAL;
 }

 dai_drv = dai->driver;
 if (!dai_drv)
  return -EINVAL;

 if (d->playback) {
  stream = &dai_drv->playback;
  caps = &d->caps[SND_SOC_TPLG_STREAM_PLAYBACK];
  set_stream_info(stream, caps);
 }

 if (d->capture) {
  stream = &dai_drv->capture;
  caps = &d->caps[SND_SOC_TPLG_STREAM_CAPTURE];
  set_stream_info(stream, caps);
 }

 if (d->flag_mask)
  set_dai_flags(dai_drv,
         le32_to_cpu(d->flag_mask),
         le32_to_cpu(d->flags));


 ret = soc_tplg_dai_load(tplg, dai_drv, ((void*)0), dai);
 if (ret < 0) {
  dev_err(tplg->comp->dev, "ASoC: DAI loading failed\n");
  return ret;
 }

 return 0;
}
