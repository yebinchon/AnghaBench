
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_spdif_in {int clk_sys; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct img_spdif_in* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_spdif_in_runtime_suspend(struct device *dev)
{
 struct img_spdif_in *spdif = dev_get_drvdata(dev);

 clk_disable_unprepare(spdif->clk_sys);

 return 0;
}
