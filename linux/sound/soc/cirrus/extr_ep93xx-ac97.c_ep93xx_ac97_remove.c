
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;
struct ep93xx_ac97_info {int dummy; } ;


 int AC97GCR ;
 int * ep93xx_ac97_info ;
 int ep93xx_ac97_write_reg (struct ep93xx_ac97_info*,int ,int ) ;
 struct ep93xx_ac97_info* platform_get_drvdata (struct platform_device*) ;
 int snd_soc_set_ac97_ops (int *) ;
 int snd_soc_unregister_component (int *) ;

__attribute__((used)) static int ep93xx_ac97_remove(struct platform_device *pdev)
{
 struct ep93xx_ac97_info *info = platform_get_drvdata(pdev);

 snd_soc_unregister_component(&pdev->dev);


 ep93xx_ac97_write_reg(info, AC97GCR, 0);

 ep93xx_ac97_info = ((void*)0);

 snd_soc_set_ac97_ops(((void*)0));

 return 0;
}
