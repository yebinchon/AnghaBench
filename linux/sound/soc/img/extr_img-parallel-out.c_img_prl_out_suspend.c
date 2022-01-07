
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct img_prl_out {int clk_ref; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct img_prl_out* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int img_prl_out_suspend(struct device *dev)
{
 struct img_prl_out *prl = dev_get_drvdata(dev);

 clk_disable_unprepare(prl->clk_ref);

 return 0;
}
