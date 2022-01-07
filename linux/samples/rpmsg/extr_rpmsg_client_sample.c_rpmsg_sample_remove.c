
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpmsg_device {int dev; } ;


 int dev_info (int *,char*) ;

__attribute__((used)) static void rpmsg_sample_remove(struct rpmsg_device *rpdev)
{
 dev_info(&rpdev->dev, "rpmsg sample client driver is removed\n");
}
