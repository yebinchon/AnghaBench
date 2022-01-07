
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int hac_ac97_ops ;
 int sh4_hac_component ;
 int sh4_hac_dai ;
 int snd_soc_set_ac97_ops (int *) ;

__attribute__((used)) static int hac_soc_platform_probe(struct platform_device *pdev)
{
 int ret;

 ret = snd_soc_set_ac97_ops(&hac_ac97_ops);
 if (ret != 0)
  return ret;

 return devm_snd_soc_register_component(&pdev->dev, &sh4_hac_component,
       sh4_hac_dai, ARRAY_SIZE(sh4_hac_dai));
}
