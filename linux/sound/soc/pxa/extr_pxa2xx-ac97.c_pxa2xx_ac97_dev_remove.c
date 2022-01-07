
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;
struct ac97_controller {int dummy; } ;


 struct ac97_controller* platform_get_drvdata (struct platform_device*) ;
 int pxa2xx_ac97_hw_remove (struct platform_device*) ;
 int snd_ac97_controller_unregister (struct ac97_controller*) ;

__attribute__((used)) static int pxa2xx_ac97_dev_remove(struct platform_device *pdev)
{
 struct ac97_controller *ctrl = platform_get_drvdata(pdev);

 snd_ac97_controller_unregister(ctrl);
 pxa2xx_ac97_hw_remove(pdev);
 return 0;
}
