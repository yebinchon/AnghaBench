
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct i915_audio_component {int dummy; } ;
struct hdac_bus {int dev; struct drm_audio_component* audio_component; } ;
struct drm_audio_component {int ops; } ;


 int CONFIG_MODULES ;
 int ENODEV ;
 int IS_ENABLED (int ) ;
 int bind_complete ;
 int dev_info (int ,char*) ;
 int i915_component_master_match ;
 int i915_gfx_present () ;
 int i915_init_ops ;
 int init_completion (int *) ;
 int msecs_to_jiffies (int) ;
 int request_module (char*) ;
 int snd_hdac_acomp_exit (struct hdac_bus*) ;
 int snd_hdac_acomp_init (struct hdac_bus*,int *,int ,int) ;
 int wait_for_completion_timeout (int *,int ) ;

int snd_hdac_i915_init(struct hdac_bus *bus)
{
 struct drm_audio_component *acomp;
 int err;

 if (!i915_gfx_present())
  return -ENODEV;

 init_completion(&bind_complete);

 err = snd_hdac_acomp_init(bus, &i915_init_ops,
      i915_component_master_match,
      sizeof(struct i915_audio_component) - sizeof(*acomp));
 if (err < 0)
  return err;
 acomp = bus->audio_component;
 if (!acomp)
  return -ENODEV;
 if (!acomp->ops) {
  if (!IS_ENABLED(CONFIG_MODULES) ||
      !request_module("i915")) {

   wait_for_completion_timeout(&bind_complete,
         msecs_to_jiffies(60 * 1000));
  }
 }
 if (!acomp->ops) {
  dev_info(bus->dev, "couldn't bind with audio component\n");
  snd_hdac_acomp_exit(bus);
  return -ENODEV;
 }
 return 0;
}
