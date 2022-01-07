
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct platform_device {int dev; } ;


 int dev_dbg (int *,char*) ;

__attribute__((used)) static int sst_platform_remove(struct platform_device *pdev)
{
 dev_dbg(&pdev->dev, "sst_platform_remove success\n");
 return 0;
}
