
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dev; TYPE_1__* driver; } ;
struct snd_pcm_substream {int stream; } ;
struct lpass_data {int variant; int lpaif_map; } ;
struct TYPE_2__ {int id; } ;


 int EINVAL ;
 unsigned int LPAIF_I2SCTL_MICEN_DISABLE ;
 unsigned int LPAIF_I2SCTL_MICEN_ENABLE ;
 unsigned int LPAIF_I2SCTL_MICEN_MASK ;
 int LPAIF_I2SCTL_REG (int ,int ) ;
 unsigned int LPAIF_I2SCTL_SPKEN_DISABLE ;
 unsigned int LPAIF_I2SCTL_SPKEN_ENABLE ;
 unsigned int LPAIF_I2SCTL_SPKEN_MASK ;
 int SNDRV_PCM_STREAM_PLAYBACK ;






 int dev_err (int ,char*,int) ;
 int regmap_update_bits (int ,int ,unsigned int,unsigned int) ;
 struct lpass_data* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int lpass_cpu_daiops_trigger(struct snd_pcm_substream *substream,
  int cmd, struct snd_soc_dai *dai)
{
 struct lpass_data *drvdata = snd_soc_dai_get_drvdata(dai);
 int ret = -EINVAL;
 unsigned int val, mask;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
   val = LPAIF_I2SCTL_SPKEN_ENABLE;
   mask = LPAIF_I2SCTL_SPKEN_MASK;
  } else {
   val = LPAIF_I2SCTL_MICEN_ENABLE;
   mask = LPAIF_I2SCTL_MICEN_MASK;
  }

  ret = regmap_update_bits(drvdata->lpaif_map,
    LPAIF_I2SCTL_REG(drvdata->variant,
      dai->driver->id),
    mask, val);
  if (ret)
   dev_err(dai->dev, "error writing to i2sctl reg: %d\n",
    ret);
  break;
 case 129:
 case 128:
 case 133:
  if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK) {
   val = LPAIF_I2SCTL_SPKEN_DISABLE;
   mask = LPAIF_I2SCTL_SPKEN_MASK;
  } else {
   val = LPAIF_I2SCTL_MICEN_DISABLE;
   mask = LPAIF_I2SCTL_MICEN_MASK;
  }

  ret = regmap_update_bits(drvdata->lpaif_map,
    LPAIF_I2SCTL_REG(drvdata->variant,
      dai->driver->id),
    mask, val);
  if (ret)
   dev_err(dai->dev, "error writing to i2sctl reg: %d\n",
    ret);
  break;
 }

 return ret;
}
