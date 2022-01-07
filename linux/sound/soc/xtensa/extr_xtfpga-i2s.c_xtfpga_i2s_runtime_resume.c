
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_i2s {int clk; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct xtfpga_i2s* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int xtfpga_i2s_runtime_resume(struct device *dev)
{
 struct xtfpga_i2s *i2s = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(i2s->clk);
 if (ret) {
  dev_err(dev, "clk_prepare_enable failed: %d\n", ret);
  return ret;
 }
 return 0;
}
