
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_audio_component {int * audio_ops; } ;
struct device {int dummy; } ;


 int bind_complete ;
 int complete_all (int *) ;

__attribute__((used)) static int i915_master_bind(struct device *dev,
       struct drm_audio_component *acomp)
{
 complete_all(&bind_complete);

 acomp->audio_ops = ((void*)0);
 return 0;
}
