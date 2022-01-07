
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct uniphier_aio {unsigned int fmt; TYPE_2__* chip; } ;
struct snd_soc_dai {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {TYPE_1__* pdev; } ;
struct TYPE_3__ {struct device dev; } ;


 int EINVAL ;
 unsigned int SND_SOC_DAIFMT_FORMAT_MASK ;



 int dev_err (struct device*,char*,unsigned int) ;
 struct uniphier_aio* uniphier_priv (struct snd_soc_dai*) ;

__attribute__((used)) static int uniphier_aio_set_fmt(struct snd_soc_dai *dai, unsigned int fmt)
{
 struct uniphier_aio *aio = uniphier_priv(dai);
 struct device *dev = &aio->chip->pdev->dev;

 switch (fmt & SND_SOC_DAIFMT_FORMAT_MASK) {
 case 129:
 case 128:
 case 130:
  aio->fmt = fmt & SND_SOC_DAIFMT_FORMAT_MASK;
  break;
 default:
  dev_err(dev, "Format is not supported(%d)\n",
   fmt & SND_SOC_DAIFMT_FORMAT_MASK);
  return -EINVAL;
 }

 return 0;
}
