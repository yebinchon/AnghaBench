
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct apr_device {int dev; } ;


 int of_platform_depopulate (int *) ;

__attribute__((used)) static int q6afe_remove(struct apr_device *adev)
{
 of_platform_depopulate(&adev->dev);

 return 0;
}
