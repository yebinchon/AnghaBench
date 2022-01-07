
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct device {TYPE_1__ kobj; } ;


 int strncmp (int ,char*,int) ;

__attribute__((used)) static int is_region_device(struct device *dev)
{
 return !strncmp(dev->kobj.name, "region", 6);
}
