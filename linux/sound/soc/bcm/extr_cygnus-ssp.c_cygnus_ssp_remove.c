
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int cygnus_soc_platform_unregister (int *) ;

__attribute__((used)) static int cygnus_ssp_remove(struct platform_device *pdev)
{
 cygnus_soc_platform_unregister(&pdev->dev);

 return 0;
}
