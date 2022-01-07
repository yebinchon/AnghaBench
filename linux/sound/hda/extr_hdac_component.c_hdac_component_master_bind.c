
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_audio_component {TYPE_2__* ops; TYPE_1__* audio_ops; scalar_t__ dev; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int owner; } ;
struct TYPE_3__ {int (* master_bind ) (struct device*,struct drm_audio_component*) ;} ;


 int EINVAL ;
 int ENODEV ;
 scalar_t__ WARN_ON (int) ;
 int component_bind_all (struct device*,struct drm_audio_component*) ;
 int component_unbind_all (struct device*,struct drm_audio_component*) ;
 struct drm_audio_component* hdac_get_acomp (struct device*) ;
 int module_put (int ) ;
 int stub1 (struct device*,struct drm_audio_component*) ;
 int try_module_get (int ) ;

__attribute__((used)) static int hdac_component_master_bind(struct device *dev)
{
 struct drm_audio_component *acomp = hdac_get_acomp(dev);
 int ret;

 if (WARN_ON(!acomp))
  return -EINVAL;

 ret = component_bind_all(dev, acomp);
 if (ret < 0)
  return ret;

 if (WARN_ON(!(acomp->dev && acomp->ops))) {
  ret = -EINVAL;
  goto out_unbind;
 }


 if (!try_module_get(acomp->ops->owner)) {
  ret = -ENODEV;
  goto out_unbind;
 }

 if (acomp->audio_ops && acomp->audio_ops->master_bind) {
  ret = acomp->audio_ops->master_bind(dev, acomp);
  if (ret < 0)
   goto module_put;
 }

 return 0;

 module_put:
 module_put(acomp->ops->owner);
out_unbind:
 component_unbind_all(dev, acomp);

 return ret;
}
