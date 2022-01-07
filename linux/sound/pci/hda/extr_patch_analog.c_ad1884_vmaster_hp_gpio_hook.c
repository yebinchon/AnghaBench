
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct ad198x_spec* spec; } ;
struct ad198x_spec {scalar_t__ eapd_nid; } ;


 int AC_VERB_SET_GPIO_DATA ;
 int ad_vmaster_eapd_hook (void*,int) ;
 int snd_hda_codec_write_cache (struct hda_codec*,int,int ,int ,int) ;

__attribute__((used)) static void ad1884_vmaster_hp_gpio_hook(void *private_data, int enabled)
{
 struct hda_codec *codec = private_data;
 struct ad198x_spec *spec = codec->spec;

 if (spec->eapd_nid)
  ad_vmaster_eapd_hook(private_data, enabled);
 snd_hda_codec_write_cache(codec, 0x01, 0,
       AC_VERB_SET_GPIO_DATA,
       enabled ? 0x00 : 0x02);
}
