
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_usp {int clk; } ;
struct device {int dummy; } ;


 int clk_disable_unprepare (int ) ;
 struct sirf_usp* dev_get_drvdata (struct device*) ;

__attribute__((used)) static int sirf_usp_pcm_runtime_suspend(struct device *dev)
{
 struct sirf_usp *usp = dev_get_drvdata(dev);

 clk_disable_unprepare(usp->clk);
 return 0;
}
