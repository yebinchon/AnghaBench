
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int dummy_codec ;
 int dummy_dai ;
 int dummy_platform ;

__attribute__((used)) static int snd_soc_dummy_probe(struct platform_device *pdev)
{
 int ret;

 ret = devm_snd_soc_register_component(&pdev->dev,
           &dummy_codec, &dummy_dai, 1);
 if (ret < 0)
  return ret;

 ret = devm_snd_soc_register_component(&pdev->dev, &dummy_platform,
           ((void*)0), 0);

 return ret;
}
