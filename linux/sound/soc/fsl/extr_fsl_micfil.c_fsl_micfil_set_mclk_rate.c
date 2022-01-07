
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct fsl_micfil {int mclk; TYPE_1__* pdev; } ;
struct device {int dummy; } ;
struct TYPE_2__ {struct device dev; } ;


 int clk_disable_unprepare (int ) ;
 int clk_prepare_enable (int ) ;
 int clk_set_rate (int ,unsigned int) ;
 int dev_warn (struct device*,char*,unsigned int,int) ;

__attribute__((used)) static int fsl_micfil_set_mclk_rate(struct fsl_micfil *micfil,
        unsigned int freq)
{
 struct device *dev = &micfil->pdev->dev;
 int ret;

 clk_disable_unprepare(micfil->mclk);

 ret = clk_set_rate(micfil->mclk, freq * 1024);
 if (ret)
  dev_warn(dev, "failed to set rate (%u): %d\n",
    freq * 1024, ret);

 clk_prepare_enable(micfil->mclk);

 return ret;
}
