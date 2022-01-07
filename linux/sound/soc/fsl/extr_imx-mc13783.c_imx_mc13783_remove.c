
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int imx_mc13783 ;
 int snd_soc_unregister_card (int *) ;

__attribute__((used)) static int imx_mc13783_remove(struct platform_device *pdev)
{
 snd_soc_unregister_card(&imx_mc13783);

 return 0;
}
