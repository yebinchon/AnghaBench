
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;


 int WARN_ON (int ) ;
 int devm_resource_match ;
 int devm_resource_release ;
 int devres_release (struct device*,int ,int ,struct resource*) ;

void devm_release_resource(struct device *dev, struct resource *new)
{
 WARN_ON(devres_release(dev, devm_resource_release, devm_resource_match,
          new));
}
