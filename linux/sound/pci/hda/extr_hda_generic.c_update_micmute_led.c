
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_5__ {scalar_t__* value; } ;
struct TYPE_6__ {TYPE_1__ integer; } ;
struct TYPE_8__ {int name; } ;
struct snd_ctl_elem_value {TYPE_2__ value; TYPE_4__ id; } ;
struct TYPE_7__ {unsigned int capture; int (* old_hook ) (struct hda_codec*,struct snd_kcontrol*,struct snd_ctl_elem_value*) ;} ;
struct hda_gen_spec {TYPE_3__ micmute_led; } ;
struct hda_codec {struct hda_gen_spec* spec; } ;


 int call_micmute_led_update (struct hda_codec*) ;
 unsigned int snd_ctl_get_ioffidx (struct snd_kcontrol*,TYPE_4__*) ;
 int strcmp (char*,int ) ;
 int stub1 (struct hda_codec*,struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static void update_micmute_led(struct hda_codec *codec,
          struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct hda_gen_spec *spec = codec->spec;
 unsigned int mask;

 if (spec->micmute_led.old_hook)
  spec->micmute_led.old_hook(codec, kcontrol, ucontrol);

 if (!ucontrol)
  return;
 mask = 1U << snd_ctl_get_ioffidx(kcontrol, &ucontrol->id);
 if (!strcmp("Capture Switch", ucontrol->id.name)) {

  if (ucontrol->value.integer.value[0] ||
      ucontrol->value.integer.value[1])
   spec->micmute_led.capture |= mask;
  else
   spec->micmute_led.capture &= ~mask;
  call_micmute_led_update(codec);
 }
}
