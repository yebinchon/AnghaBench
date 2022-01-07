
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_audio_component {int dummy; } ;
struct device {int dummy; } ;


 struct drm_audio_component* devres_find (struct device*,int ,int *,int *) ;
 int hdac_acomp_release ;

__attribute__((used)) static struct drm_audio_component *hdac_get_acomp(struct device *dev)
{
 return devres_find(dev, hdac_acomp_release, ((void*)0), ((void*)0));
}
