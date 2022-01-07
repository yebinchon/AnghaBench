
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlnx_pcm_drv_data {int axi_clk; scalar_t__ mmio; scalar_t__ mm2s_presence; scalar_t__ s2mm_presence; } ;
struct platform_device {int dev; } ;


 scalar_t__ XLNX_MM2S_OFFSET ;
 scalar_t__ XLNX_S2MM_OFFSET ;
 int clk_disable_unprepare (int ) ;
 int dev_err (int *,char*) ;
 struct xlnx_pcm_drv_data* dev_get_drvdata (int *) ;
 int xlnx_formatter_pcm_reset (scalar_t__) ;

__attribute__((used)) static int xlnx_formatter_pcm_remove(struct platform_device *pdev)
{
 int ret = 0;
 struct xlnx_pcm_drv_data *adata = dev_get_drvdata(&pdev->dev);

 if (adata->s2mm_presence)
  ret = xlnx_formatter_pcm_reset(adata->mmio + XLNX_S2MM_OFFSET);


 if (adata->mm2s_presence)
  ret = xlnx_formatter_pcm_reset(adata->mmio + XLNX_MM2S_OFFSET);

 if (ret)
  dev_err(&pdev->dev, "audio formatter reset failed\n");

 clk_disable_unprepare(adata->axi_clk);
 return ret;
}
