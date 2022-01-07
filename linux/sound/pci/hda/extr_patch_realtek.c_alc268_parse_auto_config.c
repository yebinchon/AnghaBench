
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int alc_parse_auto_config (struct hda_codec*,int *,int const*) ;

__attribute__((used)) static int alc268_parse_auto_config(struct hda_codec *codec)
{
 static const hda_nid_t alc268_ssids[] = { 0x15, 0x1b, 0x14, 0 };
 return alc_parse_auto_config(codec, ((void*)0), alc268_ssids);
}
