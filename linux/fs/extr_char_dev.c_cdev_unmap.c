
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dev_t ;


 int cdev_map ;
 int kobj_unmap (int ,int ,unsigned int) ;

__attribute__((used)) static void cdev_unmap(dev_t dev, unsigned count)
{
 kobj_unmap(cdev_map, dev, count);
}
