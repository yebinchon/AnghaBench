
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mdev_state {TYPE_1__* type; } ;
struct mdev_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;
struct TYPE_2__ {int width; int height; } ;


 struct mdev_device* mdev_from_dev (struct device*) ;
 struct mdev_state* mdev_get_drvdata (struct mdev_device*) ;
 int sprintf (char*,char*,int,int) ;

__attribute__((used)) static ssize_t
resolution_show(struct device *dev, struct device_attribute *attr,
  char *buf)
{
 struct mdev_device *mdev = mdev_from_dev(dev);
 struct mdev_state *mdev_state = mdev_get_drvdata(mdev);

 return sprintf(buf, "%dx%d\n",
         mdev_state->type->width,
         mdev_state->type->height);
}
