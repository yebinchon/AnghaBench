
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct device {TYPE_1__* driver; } ;
struct TYPE_2__ {int name; } ;


 int I915_COMPONENT_AUDIO ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int i915_component_master_match(struct device *dev, int subcomponent,
           void *data)
{
 return !strcmp(dev->driver->name, "i915") &&
        subcomponent == I915_COMPONENT_AUDIO;
}
