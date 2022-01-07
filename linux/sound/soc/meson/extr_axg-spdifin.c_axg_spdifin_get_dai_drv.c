
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* stream_name; int channels_min; int channels_max; unsigned int rates; int formats; } ;
struct snd_soc_dai_driver {char* name; TYPE_2__ capture; int remove; int probe; int * ops; } ;
struct device {int dummy; } ;
struct axg_spdifin {TYPE_1__* conf; } ;
struct TYPE_3__ {int * mode_rates; } ;


 int EINVAL ;
 int ENOMEM ;
 struct snd_soc_dai_driver* ERR_PTR (int ) ;
 int GFP_KERNEL ;
 int SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE ;
 unsigned int SNDRV_PCM_RATE_KNOT ;
 int SPDIFIN_MODE_NUM ;
 int axg_spdifin_dai_probe ;
 int axg_spdifin_dai_remove ;
 int axg_spdifin_ops ;
 struct snd_soc_dai_driver* devm_kzalloc (struct device*,int,int ) ;
 unsigned int snd_pcm_rate_to_rate_bit (int ) ;

__attribute__((used)) static struct snd_soc_dai_driver *
axg_spdifin_get_dai_drv(struct device *dev, struct axg_spdifin *priv)
{
 struct snd_soc_dai_driver *drv;
 int i;

 drv = devm_kzalloc(dev, sizeof(*drv), GFP_KERNEL);
 if (!drv)
  return ERR_PTR(-ENOMEM);

 drv->name = "SPDIF Input";
 drv->ops = &axg_spdifin_ops;
 drv->probe = axg_spdifin_dai_probe;
 drv->remove = axg_spdifin_dai_remove;
 drv->capture.stream_name = "Capture";
 drv->capture.channels_min = 1;
 drv->capture.channels_max = 2;
 drv->capture.formats = SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE;

 for (i = 0; i < SPDIFIN_MODE_NUM; i++) {
  unsigned int rb =
   snd_pcm_rate_to_rate_bit(priv->conf->mode_rates[i]);

  if (rb == SNDRV_PCM_RATE_KNOT)
   return ERR_PTR(-EINVAL);

  drv->capture.rates |= rb;
 }

 return drv;
}
