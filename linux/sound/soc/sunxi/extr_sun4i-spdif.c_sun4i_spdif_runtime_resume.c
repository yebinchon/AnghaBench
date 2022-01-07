
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sun4i_spdif_dev {int spdif_clk; int apb_clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 struct sun4i_spdif_dev* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int sun4i_spdif_runtime_resume(struct device *dev)
{
 struct sun4i_spdif_dev *host = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(host->spdif_clk);
 if (ret)
  return ret;
 ret = clk_prepare_enable(host->apb_clk);
 if (ret)
  clk_disable_unprepare(host->spdif_clk);

 return ret;
}
