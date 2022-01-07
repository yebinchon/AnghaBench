
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_bus {int dummy; } ;


 int HDA_CODEC_IDX_CONTROLLER ;
 int snd_hdac_display_power (struct hdac_bus*,int ,int) ;
 int snd_hdac_i915_init (struct hdac_bus*) ;

__attribute__((used)) static int skl_i915_init(struct hdac_bus *bus)
{
 int err;





 err = snd_hdac_i915_init(bus);
 if (err < 0)
  return err;

 snd_hdac_display_power(bus, HDA_CODEC_IDX_CONTROLLER, 1);

 return 0;
}
