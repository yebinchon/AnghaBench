
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int hp_outs; } ;
struct TYPE_4__ {TYPE_1__ autocfg; } ;
struct via_spec {scalar_t__ codec_type; int hp_work_active; TYPE_2__ gen; } ;
struct hda_codec {int jackpoll_work; scalar_t__ jackpoll_interval; struct via_spec* spec; } ;


 scalar_t__ VT1708 ;
 int cancel_delayed_work_sync (int *) ;
 int snd_hda_codec_write (struct hda_codec*,int,int ,int,int) ;

__attribute__((used)) static void vt1708_stop_hp_work(struct hda_codec *codec)
{
 struct via_spec *spec = codec->spec;
 if (spec->codec_type != VT1708 || !spec->gen.autocfg.hp_outs)
  return;
 if (spec->hp_work_active) {
  snd_hda_codec_write(codec, 0x1, 0, 0xf81, 1);
  codec->jackpoll_interval = 0;
  cancel_delayed_work_sync(&codec->jackpoll_work);
  spec->hp_work_active = 0;
 }
}
