
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int devm_snd_soc_register_component (int *,int *,int *,int ) ;
 int txx9aclc_soc_component ;

__attribute__((used)) static int txx9aclc_soc_platform_probe(struct platform_device *pdev)
{
 return devm_snd_soc_register_component(&pdev->dev,
     &txx9aclc_soc_component, ((void*)0), 0);
}
