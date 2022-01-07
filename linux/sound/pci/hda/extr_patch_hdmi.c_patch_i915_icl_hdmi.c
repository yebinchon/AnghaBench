
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;


 int ARRAY_SIZE (int const*) ;
 int intel_hsw_common_init (struct hda_codec*,int,int const*,int ) ;

__attribute__((used)) static int patch_i915_icl_hdmi(struct hda_codec *codec)
{




 static const int map[] = {0x4, 0x6, 0x8, 0xa, 0xb};

 return intel_hsw_common_init(codec, 0x02, map, ARRAY_SIZE(map));
}
