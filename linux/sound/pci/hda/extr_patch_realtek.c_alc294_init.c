
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ event; } ;
struct TYPE_6__ {TYPE_1__ power_state; } ;
struct TYPE_7__ {TYPE_2__ power; } ;
struct TYPE_8__ {TYPE_3__ dev; } ;
struct hda_codec {TYPE_4__ core; struct alc_spec* spec; } ;
struct alc_spec {int done_hp_init; } ;


 scalar_t__ PM_EVENT_RESTORE ;
 int alc294_hp_init (struct hda_codec*) ;
 int alc_default_init (struct hda_codec*) ;

__attribute__((used)) static void alc294_init(struct hda_codec *codec)
{
 struct alc_spec *spec = codec->spec;


 if (!spec->done_hp_init ||
     codec->core.dev.power.power_state.event == PM_EVENT_RESTORE) {
  alc294_hp_init(codec);
  spec->done_hp_init = 1;
 }
 alc_default_init(codec);
}
