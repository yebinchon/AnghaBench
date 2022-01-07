
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct TYPE_2__ {int vendor_id; } ;
struct hda_codec {TYPE_1__ core; struct alc_spec* spec; } ;
struct alc_spec {int ultra_low_power; } ;




 int alc_update_coef_idx (struct hda_codec*,int,int,int) ;

__attribute__((used)) static void alc295_fixup_chromebook(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{
 struct alc_spec *spec = codec->spec;

 switch (action) {
 case 128:
  spec->ultra_low_power = 1;
  break;
 case 129:
  switch (codec->core.vendor_id) {
  case 0x10ec0295:
   alc_update_coef_idx(codec, 0x4a, 0x8000, 1 << 15);
   alc_update_coef_idx(codec, 0x4a, 0x8000, 0 << 15);
   break;
  case 0x10ec0236:
   alc_update_coef_idx(codec, 0x1b, 0x8000, 1 << 15);
   alc_update_coef_idx(codec, 0x1b, 0x8000, 0 << 15);
   break;
  }
  break;
 }
}
