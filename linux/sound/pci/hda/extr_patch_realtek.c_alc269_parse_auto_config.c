
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {struct alc_spec* spec; } ;
struct alc_spec {int codec_variant; } ;
typedef int hda_nid_t ;
 int alc_parse_auto_config (struct hda_codec*,int const*,int const*) ;

__attribute__((used)) static int alc269_parse_auto_config(struct hda_codec *codec)
{
 static const hda_nid_t alc269_ignore[] = { 0x1d, 0 };
 static const hda_nid_t alc269_ssids[] = { 0, 0x1b, 0x14, 0x21 };
 static const hda_nid_t alc269va_ssids[] = { 0x15, 0x1b, 0x14, 0 };
 struct alc_spec *spec = codec->spec;
 const hda_nid_t *ssids;

 switch (spec->codec_variant) {
 case 142:
 case 140:
 case 138:
 case 135:
 case 133:
  ssids = alc269va_ssids;
  break;
 case 141:
 case 139:
 case 137:
 case 136:
 case 134:
 case 131:
 case 145:
 case 144:
 case 143:
 case 147:
 case 146:
 case 132:
 case 130:
 case 129:
 case 128:
  ssids = alc269_ssids;
  break;
 default:
  ssids = alc269_ssids;
  break;
 }

 return alc_parse_auto_config(codec, alc269_ignore, ssids);
}
