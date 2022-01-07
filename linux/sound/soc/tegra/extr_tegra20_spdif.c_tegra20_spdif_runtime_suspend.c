
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tegra20_spdif {int clk_spdif_out; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct tegra20_spdif* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int tegra20_spdif_runtime_suspend(struct device *dev)
{
 struct tegra20_spdif *spdif = dev_get_drvdata(dev);

 clk_disable_unprepare(spdif->clk_spdif_out);

 return 0;
}
