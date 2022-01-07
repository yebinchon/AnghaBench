
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rk_pdm_dev {int hclk; int clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct rk_pdm_dev* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int rockchip_pdm_runtime_suspend(struct device *dev)
{
 struct rk_pdm_dev *pdm = dev_get_drvdata(dev);

 clk_disable_unprepare(pdm->clk);
 clk_disable_unprepare(pdm->hclk);

 return 0;
}
