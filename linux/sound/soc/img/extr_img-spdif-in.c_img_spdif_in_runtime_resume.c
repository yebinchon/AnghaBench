
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_spdif_in {int clk_sys; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*) ;
 struct img_spdif_in* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_spdif_in_runtime_resume(struct device *dev)
{
 struct img_spdif_in *spdif = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(spdif->clk_sys);
 if (ret) {
  dev_err(dev, "Unable to enable sys clock\n");
  return ret;
 }

 return 0;
}
