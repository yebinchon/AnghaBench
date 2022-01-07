
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct lpass_data {int pcnoc_sway_clk; int pcnoc_mport_clk; } ;


 int clk_disable_unprepare (int ) ;
 struct lpass_data* platform_get_drvdata (struct platform_device*) ;

__attribute__((used)) static int apq8016_lpass_exit(struct platform_device *pdev)
{
 struct lpass_data *drvdata = platform_get_drvdata(pdev);

 clk_disable_unprepare(drvdata->pcnoc_mport_clk);
 clk_disable_unprepare(drvdata->pcnoc_sway_clk);

 return 0;
}
