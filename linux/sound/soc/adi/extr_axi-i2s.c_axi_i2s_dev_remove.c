
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct axi_i2s {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct axi_i2s* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int axi_i2s_dev_remove(struct platform_device *pdev)
{
 struct axi_i2s *i2s = platform_get_drvdata(pdev);

 clk_disable_unprepare(i2s->clk);

 return 0;
}
