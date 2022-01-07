
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct imx_ssi {int flags; int clk; int fiq_init; } ;


 int IMX_SSI_USE_AC97 ;
 int * ac97_ssi ;
 int clk_disable_unprepare (int ) ;
 int imx_pcm_fiq_exit (struct platform_device*) ;
 struct imx_ssi* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_set_ac97_ops (int *) ;
 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int imx_ssi_remove(struct platform_device *pdev)
{
 struct imx_ssi *ssi = platform_get_drvdata(pdev);

 if (!ssi->fiq_init)
  imx_pcm_fiq_exit(pdev);

 snd_soc_unregister_component(&pdev->dev);

 if (ssi->flags & IMX_SSI_USE_AC97)
  ac97_ssi = ((void*)0);

 clk_disable_unprepare(ssi->clk);
 snd_soc_set_ac97_ops(((void*)0));

 return 0;
}
