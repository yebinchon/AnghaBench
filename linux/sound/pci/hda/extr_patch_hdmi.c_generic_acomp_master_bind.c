
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drm_audio_component {int dummy; } ;
struct device {int dummy; } ;


 int generic_acomp_notifier_set (struct drm_audio_component*,int) ;

__attribute__((used)) static int generic_acomp_master_bind(struct device *dev,
         struct drm_audio_component *acomp)
{
 generic_acomp_notifier_set(acomp, 1);
 return 0;
}
