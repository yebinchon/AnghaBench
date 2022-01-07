
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct platform_device {int dummy; } ;
struct lpass_data {int ahbix_clk; TYPE_1__* variant; } ;
struct TYPE_2__ {int (* exit ) (struct platform_device*) ;} ;


 int clk_disable_unprepare (int ) ;
 struct lpass_data* platform_get_drvdata (struct platform_device*) ;
 int stub1 (struct platform_device*) ;

int asoc_qcom_lpass_cpu_platform_remove(struct platform_device *pdev)
{
 struct lpass_data *drvdata = platform_get_drvdata(pdev);

 if (drvdata->variant->exit)
  drvdata->variant->exit(pdev);

 clk_disable_unprepare(drvdata->ahbix_clk);

 return 0;
}
