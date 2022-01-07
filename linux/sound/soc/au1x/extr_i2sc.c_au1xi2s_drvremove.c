
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct au1xpsc_audio_data {int dummy; } ;


 int EN_D ;
 int I2S_ENABLE ;
 int WR (struct au1xpsc_audio_data*,int ,int ) ;
 struct au1xpsc_audio_data* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int au1xi2s_drvremove(struct platform_device *pdev)
{
 struct au1xpsc_audio_data *ctx = platform_get_drvdata(pdev);

 snd_soc_unregister_component(&pdev->dev);

 WR(ctx, I2S_ENABLE, EN_D);

 return 0;
}
