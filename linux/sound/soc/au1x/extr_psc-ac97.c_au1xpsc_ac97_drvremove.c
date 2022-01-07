
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct au1xpsc_audio_data {int dummy; } ;


 int AC97_CFG (struct au1xpsc_audio_data*) ;
 int PSC_CTRL (struct au1xpsc_audio_data*) ;
 int PSC_CTRL_DISABLE ;
 int __raw_writel (int ,int ) ;
 int * au1xpsc_ac97_workdata ;
 struct au1xpsc_audio_data* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_component (int *) ;
 int wmb () ;

__attribute__((used)) static int au1xpsc_ac97_drvremove(struct platform_device *pdev)
{
 struct au1xpsc_audio_data *wd = platform_get_drvdata(pdev);

 snd_soc_unregister_component(&pdev->dev);


 __raw_writel(0, AC97_CFG(wd));
 wmb();
 __raw_writel(PSC_CTRL_DISABLE, PSC_CTRL(wd));
 wmb();

 au1xpsc_ac97_workdata = ((void*)0);

 return 0;
}
