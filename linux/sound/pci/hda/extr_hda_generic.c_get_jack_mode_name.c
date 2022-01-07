
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_gen_spec {int autocfg; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;
typedef int hda_nid_t ;


 scalar_t__ find_kctl_name (struct hda_codec*,char*,int) ;
 int snd_hda_get_pin_label (struct hda_codec*,int ,int *,char*,size_t,int*) ;
 int strlcat (char*,char*,size_t) ;

__attribute__((used)) static void get_jack_mode_name(struct hda_codec *codec, hda_nid_t pin,
          char *name, size_t name_len)
{
 struct hda_gen_spec *spec = codec->spec;
 int idx = 0;

 snd_hda_get_pin_label(codec, pin, &spec->autocfg, name, name_len, &idx);
 strlcat(name, " Jack Mode", name_len);

 for (; find_kctl_name(codec, name, idx); idx++)
  ;
}
