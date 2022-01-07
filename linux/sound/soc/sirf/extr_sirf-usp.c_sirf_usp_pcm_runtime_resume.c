
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sirf_usp {int clk; } ;
struct device {int dummy; } ;


 int clk_prepare_enable (int ) ;
 int dev_err (struct device*,char*,int) ;
 struct sirf_usp* dev_get_drvdata (struct device*) ;
 int sirf_usp_i2s_init (struct sirf_usp*) ;

__attribute__((used)) static int sirf_usp_pcm_runtime_resume(struct device *dev)
{
 struct sirf_usp *usp = dev_get_drvdata(dev);
 int ret;

 ret = clk_prepare_enable(usp->clk);
 if (ret) {
  dev_err(dev, "clk_enable failed: %d\n", ret);
  return ret;
 }
 sirf_usp_i2s_init(usp);
 return 0;
}
