
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dummy; } ;


 int ENODEV ;
 int * das ;

__attribute__((used)) static int tegra20_das_remove(struct platform_device *pdev)
{
 if (!das)
  return -ENODEV;

 das = ((void*)0);

 return 0;
}
