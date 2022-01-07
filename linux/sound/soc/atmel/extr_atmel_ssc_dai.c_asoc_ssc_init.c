
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ssc_device {TYPE_1__* pdata; } ;
struct device {int dummy; } ;
struct TYPE_2__ {scalar_t__ use_dma; } ;


 int atmel_pcm_dma_platform_register (struct device*) ;
 int atmel_pcm_pdc_platform_register (struct device*) ;
 int atmel_ssc_component ;
 int atmel_ssc_dai ;
 int dev_err (struct device*,char*,int) ;
 struct ssc_device* dev_get_drvdata (struct device*) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;

__attribute__((used)) static int asoc_ssc_init(struct device *dev)
{
 struct ssc_device *ssc = dev_get_drvdata(dev);
 int ret;

 ret = devm_snd_soc_register_component(dev, &atmel_ssc_component,
      &atmel_ssc_dai, 1);
 if (ret) {
  dev_err(dev, "Could not register DAI: %d\n", ret);
  return ret;
 }

 if (ssc->pdata->use_dma)
  ret = atmel_pcm_dma_platform_register(dev);
 else
  ret = atmel_pcm_pdc_platform_register(dev);

 if (ret) {
  dev_err(dev, "Could not register PCM: %d\n", ret);
  return ret;
 }

 return 0;
}
