
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stm32_sai_data {TYPE_1__* pdev; int pclk; } ;
struct device {int dummy; } ;
struct TYPE_2__ {int dev; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int *,char*,int) ;
 struct stm32_sai_data* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int stm32_sai_pclk_enable(struct device *dev)
{
 struct stm32_sai_data *sai = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(sai->pclk);
 if (ret) {
  dev_err(&sai->pdev->dev, "failed to enable clock: %d\n", ret);
  return ret;
 }

 return 0;
}
