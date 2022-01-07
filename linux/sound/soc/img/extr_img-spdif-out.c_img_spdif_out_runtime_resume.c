
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_spdif_out {int clk_sys; int clk_ref; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct img_spdif_out* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_spdif_out_runtime_resume(struct device *dev)
{
 struct img_spdif_out *spdif = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(spdif->clk_sys);
 if (ret) {
  dev_err(dev, "clk_enable failed: %d\n", ret);
  return ret;
 }

 ret = clk_prepare_enable(spdif->clk_ref);
 if (ret) {
  dev_err(dev, "clk_enable failed: %d\n", ret);
  clk_disable_unprepare(spdif->clk_sys);
  return ret;
 }

 return 0;
}
