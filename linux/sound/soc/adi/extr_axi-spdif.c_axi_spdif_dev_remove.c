
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct axi_spdif {int clk; } ;


 int clk_disable_unprepare (int ) ;
 struct axi_spdif* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int axi_spdif_dev_remove(struct platform_device *pdev)
{
 struct axi_spdif *spdif = platform_get_drvdata(pdev);

 clk_disable_unprepare(spdif->clk);

 return 0;
}
