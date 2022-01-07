
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int dev_dbg (struct device*,char*) ;

__attribute__((used)) static void mtty_device_release(struct device *dev)
{
 dev_dbg(dev, "mtty: released\n");
}
