
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_spdif {int clk_spdif_out; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct tegra20_spdif* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int tegra20_spdif_runtime_resume(struct device *dev)
{
 struct tegra20_spdif *spdif = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(spdif->clk_spdif_out);
 if (ret) {
  dev_err(dev, "clk_enable failed: %d\n", ret);
  return ret;
 }

 return 0;
}
