
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_4__ {int channels_max; } ;
struct snd_soc_dai_driver {TYPE_1__ capture; } ;
struct TYPE_5__ {scalar_t__ of_node; } ;
struct platform_device {TYPE_2__ dev; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct snd_soc_dai_driver* devm_kzalloc (TYPE_2__*,int,int ) ;
 int devm_snd_soc_register_component (TYPE_2__*,int *,struct snd_soc_dai_driver*,int) ;
 struct snd_soc_dai_driver dmic_dai ;
 int memcpy (struct snd_soc_dai_driver*,struct snd_soc_dai_driver*,int) ;
 int of_property_read_u32 (scalar_t__,char*,int*) ;
 int soc_dmic ;

__attribute__((used)) static int dmic_dev_probe(struct platform_device *pdev)
{
 int err;
 u32 chans;
 struct snd_soc_dai_driver *dai_drv = &dmic_dai;

 if (pdev->dev.of_node) {
  err = of_property_read_u32(pdev->dev.of_node, "num-channels", &chans);
  if (err && (err != -EINVAL))
   return err;

  if (!err) {
   if (chans < 1 || chans > 8)
    return -EINVAL;

   dai_drv = devm_kzalloc(&pdev->dev, sizeof(*dai_drv), GFP_KERNEL);
   if (!dai_drv)
    return -ENOMEM;

   memcpy(dai_drv, &dmic_dai, sizeof(*dai_drv));
   dai_drv->capture.channels_max = chans;
  }
 }

 return devm_snd_soc_register_component(&pdev->dev,
   &soc_dmic, dai_drv, 1);
}
