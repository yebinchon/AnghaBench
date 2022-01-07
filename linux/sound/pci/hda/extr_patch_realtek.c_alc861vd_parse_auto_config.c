
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int alc_parse_auto_config (struct hda_codec*,int const*,int const*) ;

__attribute__((used)) static int alc861vd_parse_auto_config(struct hda_codec *codec)
{
 static const hda_nid_t alc861vd_ignore[] = { 0x1d, 0 };
 static const hda_nid_t alc861vd_ssids[] = { 0x15, 0x1b, 0x14, 0 };
 return alc_parse_auto_config(codec, alc861vd_ignore, alc861vd_ssids);
}
