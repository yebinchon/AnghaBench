
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (unsigned long const*) ;
__attribute__((used)) static unsigned long hdmi_codec_spk_mask_from_alloc(int spk_alloc)
{
 int i;
 static const unsigned long hdmi_codec_eld_spk_alloc_bits[] = {
  [0] = 137 | 135, [1] = 133, [2] = 138, [3] = 131 | 129,
  [4] = 132, [5] = 136 | 134, [6] = 130 | 128,
 };
 unsigned long spk_mask = 0;

 for (i = 0; i < ARRAY_SIZE(hdmi_codec_eld_spk_alloc_bits); i++) {
  if (spk_alloc & (1 << i))
   spk_mask |= hdmi_codec_eld_spk_alloc_bits[i];
 }

 return spk_mask;
}
