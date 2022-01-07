
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hda_codec {int dummy; } ;
typedef scalar_t__ hda_nid_t ;


 int AC_VERB_GET_POWER_STATE ;
 int msleep (int) ;
 int snd_hda_codec_read (struct hda_codec*,scalar_t__,int ,int ,int ) ;

__attribute__((used)) static void sync_power_state_change(struct hda_codec *codec, hda_nid_t nid)
{
 if (nid) {
  msleep(10);
  snd_hda_codec_read(codec, nid, 0, AC_VERB_GET_POWER_STATE, 0);
 }
}
