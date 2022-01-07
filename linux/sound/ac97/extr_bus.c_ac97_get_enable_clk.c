
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ac97_codec_device {int clk; int dev; } ;


 scalar_t__ IS_ERR (int ) ;
 int PTR_ERR (int ) ;
 int clk_get (int *,char*) ;
 int clk_prepare_enable (int ) ;
 int clk_put (int ) ;

__attribute__((used)) static int ac97_get_enable_clk(struct ac97_codec_device *adev)
{
 int ret;

 adev->clk = clk_get(&adev->dev, "ac97_clk");
 if (IS_ERR(adev->clk))
  return PTR_ERR(adev->clk);

 ret = clk_prepare_enable(adev->clk);
 if (ret)
  clk_put(adev->clk);

 return ret;
}
