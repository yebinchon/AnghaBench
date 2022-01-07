
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct fsl_micfil {int regmap; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int EINVAL ;
 int MICFIL_CTRL1_DISEL_MASK ;
 int MICFIL_CTRL1_DISEL_SHIFT ;
 int MICFIL_CTRL1_PDMIEN ;
 int MICFIL_CTRL1_PDMIEN_MASK ;
 int REG_MICFIL_CTRL1 ;






 int dev_err (struct device*,char*) ;
 int fsl_micfil_reset (struct device*) ;
 int regmap_update_bits (int ,int ,int ,int) ;
 struct fsl_micfil* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int fsl_micfil_trigger(struct snd_pcm_substream *substream, int cmd,
         struct snd_soc_dai *dai)
{
 struct fsl_micfil *micfil = snd_soc_dai_get_drvdata(dai);
 struct device *dev = &micfil->pdev->dev;
 int ret;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  ret = fsl_micfil_reset(dev);
  if (ret) {
   dev_err(dev, "failed to soft reset\n");
   return ret;
  }







  ret = regmap_update_bits(micfil->regmap, REG_MICFIL_CTRL1,
      MICFIL_CTRL1_DISEL_MASK,
      (1 << MICFIL_CTRL1_DISEL_SHIFT));
  if (ret) {
   dev_err(dev, "failed to update DISEL bits\n");
   return ret;
  }


  ret = regmap_update_bits(micfil->regmap, REG_MICFIL_CTRL1,
      MICFIL_CTRL1_PDMIEN_MASK,
      MICFIL_CTRL1_PDMIEN);
  if (ret) {
   dev_err(dev, "failed to enable the module\n");
   return ret;
  }

  break;
 case 129:
 case 128:
 case 133:

  ret = regmap_update_bits(micfil->regmap, REG_MICFIL_CTRL1,
      MICFIL_CTRL1_PDMIEN_MASK,
      0);
  if (ret) {
   dev_err(dev, "failed to enable the module\n");
   return ret;
  }

  ret = regmap_update_bits(micfil->regmap, REG_MICFIL_CTRL1,
      MICFIL_CTRL1_DISEL_MASK,
      (0 << MICFIL_CTRL1_DISEL_SHIFT));
  if (ret) {
   dev_err(dev, "failed to update DISEL bits\n");
   return ret;
  }
  break;
 default:
  return -EINVAL;
 }
 return 0;
}
