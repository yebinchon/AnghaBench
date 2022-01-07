
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int alloc_intel_hdmi (struct hda_codec*) ;
 int parse_intel_hdmi (struct hda_codec*) ;

__attribute__((used)) static int patch_i915_cpt_hdmi(struct hda_codec *codec)
{
 int err;

 err = alloc_intel_hdmi(codec);
 if (err < 0)
  return err;
 return parse_intel_hdmi(codec);
}
