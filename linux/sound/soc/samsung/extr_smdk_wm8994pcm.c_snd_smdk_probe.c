
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct platform_device {int dev; } ;
struct TYPE_3__ {int * dev; } ;


 int dev_err (int *,char*,int) ;
 int devm_snd_soc_register_card (int *,TYPE_1__*) ;
 TYPE_1__ smdk_pcm ;

__attribute__((used)) static int snd_smdk_probe(struct platform_device *pdev)
{
 int ret = 0;

 smdk_pcm.dev = &pdev->dev;
 ret = devm_snd_soc_register_card(&pdev->dev, &smdk_pcm);
 if (ret)
  dev_err(&pdev->dev, "snd_soc_register_card failed %d\n", ret);

 return ret;
}
