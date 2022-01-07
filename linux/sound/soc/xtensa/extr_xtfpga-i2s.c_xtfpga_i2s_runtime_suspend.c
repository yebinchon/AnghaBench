
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xtfpga_i2s {int clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct xtfpga_i2s* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int xtfpga_i2s_runtime_suspend(struct device *dev)
{
 struct xtfpga_i2s *i2s = dev_get_drvdata(dev);

 clk_disable_unprepare(i2s->clk);
 return 0;
}
