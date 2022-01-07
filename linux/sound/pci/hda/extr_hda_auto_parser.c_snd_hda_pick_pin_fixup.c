
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_hda_pin_quirk {int subvendor; scalar_t__ codec; int name; int value; int pins; } ;
struct hda_fixup {int dummy; } ;
struct TYPE_2__ {int subsystem_id; scalar_t__ vendor_id; int chip_name; } ;
struct hda_codec {struct hda_fixup const* fixup_list; int fixup_name; TYPE_1__ core; int fixup_id; } ;


 int HDA_FIXUP_ID_NOT_SET ;
 int codec_dbg (struct hda_codec*,char*,int ,int ) ;
 scalar_t__ pin_config_match (struct hda_codec*,int ,int) ;

void snd_hda_pick_pin_fixup(struct hda_codec *codec,
       const struct snd_hda_pin_quirk *pin_quirk,
       const struct hda_fixup *fixlist,
       bool match_all_pins)
{
 const struct snd_hda_pin_quirk *pq;

 if (codec->fixup_id != HDA_FIXUP_ID_NOT_SET)
  return;

 for (pq = pin_quirk; pq->subvendor; pq++) {
  if ((codec->core.subsystem_id & 0xffff0000) != (pq->subvendor << 16))
   continue;
  if (codec->core.vendor_id != pq->codec)
   continue;
  if (pin_config_match(codec, pq->pins, match_all_pins)) {
   codec->fixup_id = pq->value;





   codec->fixup_list = fixlist;
   return;
  }
 }
}
