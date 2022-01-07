
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_i2s_out {int clk_sys; int clk_ref; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct img_i2s_out* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_i2s_out_runtime_suspend(struct device *dev)
{
 struct img_i2s_out *i2s = dev_get_drvdata(dev);

 clk_disable_unprepare(i2s->clk_ref);
 clk_disable_unprepare(i2s->clk_sys);

 return 0;
}
