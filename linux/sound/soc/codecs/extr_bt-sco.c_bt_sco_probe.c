
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int ARRAY_SIZE (int ) ;
 int bt_sco_dai ;
 int devm_snd_soc_register_component (int *,int *,int ,int ) ;
 int soc_component_dev_bt_sco ;

__attribute__((used)) static int bt_sco_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
          &soc_component_dev_bt_sco,
          bt_sco_dai, ARRAY_SIZE(bt_sco_dai));
}
