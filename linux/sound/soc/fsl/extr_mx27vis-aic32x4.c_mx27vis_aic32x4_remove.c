
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int mx27vis_aic32x4 ;
 int snd_soc_unregister_card (int *) ;

__attribute__((used)) static int mx27vis_aic32x4_remove(struct platform_device *pdev)
{
 snd_soc_unregister_card(&mx27vis_aic32x4);

 return 0;
}
