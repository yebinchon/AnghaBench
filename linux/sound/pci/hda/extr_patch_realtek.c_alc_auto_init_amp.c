
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int vendor_id; } ;
struct hda_codec {TYPE_1__ core; } ;



 int alc888_coef_init (struct hda_codec*) ;
 int alc_auto_setup_eapd (struct hda_codec*,int) ;
 int alc_update_coef_idx (struct hda_codec*,int,int ,int) ;
 int alc_update_coefex_idx (struct hda_codec*,int,int,int ,int) ;
 int alc_write_gpio (struct hda_codec*) ;

__attribute__((used)) static void alc_auto_init_amp(struct hda_codec *codec, int type)
{
 alc_auto_setup_eapd(codec, 1);
 alc_write_gpio(codec);
 switch (type) {
 case 128:
  switch (codec->core.vendor_id) {
  case 0x10ec0260:
   alc_update_coefex_idx(codec, 0x1a, 7, 0, 0x2010);
   break;
  case 0x10ec0880:
  case 0x10ec0882:
  case 0x10ec0883:
  case 0x10ec0885:
   alc_update_coef_idx(codec, 7, 0, 0x2030);
   break;
  case 0x10ec0888:
   alc888_coef_init(codec);
   break;
  }
  break;
 }
}
