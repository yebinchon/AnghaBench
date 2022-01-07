
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct au1xpsc_audio_data {int dummy; } ;


 int I2S_CFG (struct au1xpsc_audio_data*) ;
 int PSC_CTRL (struct au1xpsc_audio_data*) ;
 int PSC_CTRL_DISABLE ;
 int __raw_writel (int ,int ) ;
 struct au1xpsc_audio_data* platform_get_drvdata (struct platform_device*) ;
 int wmb () ;

__attribute__((used)) static int au1xpsc_i2s_drvremove(struct platform_device *pdev)
{
 struct au1xpsc_audio_data *wd = platform_get_drvdata(pdev);

 __raw_writel(0, I2S_CFG(wd));
 wmb();
 __raw_writel(PSC_CTRL_DISABLE, PSC_CTRL(wd));
 wmb();

 return 0;
}
