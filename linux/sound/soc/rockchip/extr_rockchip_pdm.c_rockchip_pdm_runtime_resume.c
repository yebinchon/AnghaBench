
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_pdm_dev {int dev; int hclk; int clk; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (int ,char*,int) ;
 struct rk_pdm_dev* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int rockchip_pdm_runtime_resume(struct device *dev)
{
 struct rk_pdm_dev *pdm = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(pdm->clk);
 if (ret) {
  dev_err(pdm->dev, "clock enable failed %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(pdm->hclk);
 if (ret) {
  dev_err(pdm->dev, "hclock enable failed %d\n", ret);
  return ret;
 }

 return 0;
}
