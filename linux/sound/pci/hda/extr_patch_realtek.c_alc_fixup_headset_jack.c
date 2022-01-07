
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hda_fixup {int dummy; } ;
struct TYPE_2__ {int vendor_id; } ;
struct hda_codec {TYPE_1__ core; } ;




 int SND_JACK_HEADSET ;
 int alc_headset_btn_callback ;
 int alc_headset_btn_keymap ;
 int alc_update_coef_idx (struct hda_codec*,int,int,int) ;
 int alc_write_coef_idx (struct hda_codec*,int,int) ;
 int snd_hda_jack_add_kctl (struct hda_codec*,int,char*,int,int ,int ) ;
 int snd_hda_jack_detect_enable_callback (struct hda_codec*,int,int ) ;

__attribute__((used)) static void alc_fixup_headset_jack(struct hda_codec *codec,
        const struct hda_fixup *fix, int action)
{

 switch (action) {
 case 128:
  snd_hda_jack_detect_enable_callback(codec, 0x55,
          alc_headset_btn_callback);
  snd_hda_jack_add_kctl(codec, 0x55, "Headset Jack", 0,
          SND_JACK_HEADSET, alc_headset_btn_keymap);
  break;
 case 129:
  switch (codec->core.vendor_id) {
  case 0x10ec0225:
  case 0x10ec0295:
  case 0x10ec0299:
   alc_write_coef_idx(codec, 0x48, 0xd011);
   alc_update_coef_idx(codec, 0x49, 0x007f, 0x0045);
   alc_update_coef_idx(codec, 0x44, 0x007f << 8, 0x0045 << 8);
   break;
  case 0x10ec0236:
  case 0x10ec0256:
   alc_write_coef_idx(codec, 0x48, 0xd011);
   alc_update_coef_idx(codec, 0x49, 0x007f, 0x0045);
   break;
  }
  break;
 }
}
