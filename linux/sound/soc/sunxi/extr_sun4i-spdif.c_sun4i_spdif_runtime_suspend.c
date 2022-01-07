
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_spdif_dev {int apb_clk; int spdif_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sun4i_spdif_dev* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int sun4i_spdif_runtime_suspend(struct device *dev)
{
 struct sun4i_spdif_dev *host = dev_get_drvdata(dev);

 clk_disable_unprepare(host->spdif_clk);
 clk_disable_unprepare(host->apb_clk);

 return 0;
}
