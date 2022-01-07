
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_fixup {int dummy; } ;
struct hda_codec {int dummy; } ;
typedef int hda_nid_t ;


 int HDA_FIXUP_ACT_PRE_PROBE ;
 int snd_hda_override_conn_list (struct hda_codec*,int,int,int*) ;

__attribute__((used)) static void alc295_fixup_disable_dac3(struct hda_codec *codec,
          const struct hda_fixup *fix, int action)
{
 if (action == HDA_FIXUP_ACT_PRE_PROBE) {
  hda_nid_t conn[2] = { 0x02, 0x03 };
  snd_hda_override_conn_list(codec, 0x17, 2, conn);
 }
}
