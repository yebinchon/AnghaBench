
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int clk_put (int ) ;
 int detach_gpio_amp (int ) ;
 int pdata ;
 int platform_device_unregister (struct platform_device*) ;
 struct platform_device* platform_get_drvdata (struct platform_device*) ;
 int xtal_clk ;

int simtec_audio_remove(struct platform_device *pdev)
{
 struct platform_device *snd_dev = platform_get_drvdata(pdev);

 platform_device_unregister(snd_dev);

 detach_gpio_amp(pdata);
 clk_put(xtal_clk);
 return 0;
}
