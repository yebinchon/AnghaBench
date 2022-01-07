
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct drm_audio_component {scalar_t__ dev; TYPE_2__* ops; TYPE_1__* audio_ops; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int owner; } ;
struct TYPE_3__ {int (* master_unbind ) (struct device*,struct drm_audio_component*) ;} ;


 int WARN_ON (int) ;
 int component_unbind_all (struct device*,struct drm_audio_component*) ;
 struct drm_audio_component* hdac_get_acomp (struct device*) ;
 int module_put (int ) ;
 int stub1 (struct device*,struct drm_audio_component*) ;

__attribute__((used)) static void hdac_component_master_unbind(struct device *dev)
{
 struct drm_audio_component *acomp = hdac_get_acomp(dev);

 if (acomp->audio_ops && acomp->audio_ops->master_unbind)
  acomp->audio_ops->master_unbind(dev, acomp);
 module_put(acomp->ops->owner);
 component_unbind_all(dev, acomp);
 WARN_ON(acomp->ops || acomp->dev);
}
