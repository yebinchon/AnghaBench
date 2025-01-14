
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct device_node* of_node; } ;
struct platform_device {TYPE_1__ dev; } ;
struct device_node {int dummy; } ;


 int dev_err (TYPE_1__*,char*,int) ;
 int dev_warn (TYPE_1__*,char*) ;
 int devm_snd_soc_register_component (TYPE_1__*,int *,int *,int ) ;
 int of_reserved_mem_device_init_by_idx (TYPE_1__*,struct device_node*,int ) ;
 int sprd_soc_component ;

__attribute__((used)) static int sprd_soc_platform_probe(struct platform_device *pdev)
{
 struct device_node *np = pdev->dev.of_node;
 int ret;

 ret = of_reserved_mem_device_init_by_idx(&pdev->dev, np, 0);
 if (ret)
  dev_warn(&pdev->dev,
    "no reserved DMA memory for audio platform device\n");

 ret = devm_snd_soc_register_component(&pdev->dev, &sprd_soc_component,
           ((void*)0), 0);
 if (ret)
  dev_err(&pdev->dev, "could not register platform:%d\n", ret);

 return ret;
}
