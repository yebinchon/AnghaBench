
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct device {int dummy; } ;


 int release_resource (struct resource*) ;

__attribute__((used)) static void devm_resource_release(struct device *dev, void *ptr)
{
 struct resource **r = ptr;

 release_resource(*r);
}
