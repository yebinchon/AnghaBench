
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int intel_hsw_common_init (struct hda_codec*,int,int *,int ) ;

__attribute__((used)) static int patch_i915_hsw_hdmi(struct hda_codec *codec)
{
 return intel_hsw_common_init(codec, 0x08, ((void*)0), 0);
}
