
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct davinci_mcbsp_dev {int * clk; } ;


 int clk_disable (int *) ;
 int clk_put (int *) ;
 struct davinci_mcbsp_dev* dev_get_drvdata (int *) ;
 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int davinci_i2s_remove(struct platform_device *pdev)
{
 struct davinci_mcbsp_dev *dev = dev_get_drvdata(&pdev->dev);

 snd_soc_unregister_component(&pdev->dev);

 clk_disable(dev->clk);
 clk_put(dev->clk);
 dev->clk = ((void*)0);

 return 0;
}
