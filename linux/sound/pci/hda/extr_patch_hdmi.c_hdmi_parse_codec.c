
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int afg; } ;
struct hda_codec {TYPE_1__ core; } ;
typedef int hda_nid_t ;


 unsigned int AC_WCAP_DIGITAL ;


 int EINVAL ;
 int codec_warn (struct hda_codec*,char*) ;
 unsigned int get_wcaps (struct hda_codec*,int ) ;
 unsigned int get_wcaps_type (unsigned int) ;
 int hdmi_add_cvt (struct hda_codec*,int ) ;
 int hdmi_add_pin (struct hda_codec*,int ) ;
 int snd_hda_get_sub_nodes (struct hda_codec*,int ,int *) ;

__attribute__((used)) static int hdmi_parse_codec(struct hda_codec *codec)
{
 hda_nid_t nid;
 int i, nodes;

 nodes = snd_hda_get_sub_nodes(codec, codec->core.afg, &nid);
 if (!nid || nodes < 0) {
  codec_warn(codec, "HDMI: failed to get afg sub nodes\n");
  return -EINVAL;
 }

 for (i = 0; i < nodes; i++, nid++) {
  unsigned int caps;
  unsigned int type;

  caps = get_wcaps(codec, nid);
  type = get_wcaps_type(caps);

  if (!(caps & AC_WCAP_DIGITAL))
   continue;

  switch (type) {
  case 129:
   hdmi_add_cvt(codec, nid);
   break;
  case 128:
   hdmi_add_pin(codec, nid);
   break;
  }
 }

 return 0;
}
