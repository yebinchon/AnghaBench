
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_memremap_match ;
 int devm_memremap_release ;
 int devres_release (struct device*,int ,int ,void*) ;

void devm_memunmap(struct device *dev, void *addr)
{
 WARN_ON(devres_release(dev, devm_memremap_release,
    devm_memremap_match, addr));
}
