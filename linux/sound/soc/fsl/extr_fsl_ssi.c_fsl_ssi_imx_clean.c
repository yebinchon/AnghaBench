
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct fsl_ssi {int clk; int has_ipg_clk_name; int use_dma; } ;


 int clk_disable_unprepare (int ) ;
 int imx_pcm_fiq_exit (struct platform_device*) ;

__attribute__((used)) static void fsl_ssi_imx_clean(struct platform_device *pdev, struct fsl_ssi *ssi)
{
 if (!ssi->use_dma)
  imx_pcm_fiq_exit(pdev);
 if (!ssi->has_ipg_clk_name)
  clk_disable_unprepare(ssi->clk);
}
