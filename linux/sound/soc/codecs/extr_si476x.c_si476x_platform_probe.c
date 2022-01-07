
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int) ;
 int si476x_dai ;
 int soc_component_dev_si476x ;

__attribute__((used)) static int si476x_platform_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
          &soc_component_dev_si476x,
          &si476x_dai, 1);
}
