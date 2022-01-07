
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {scalar_t__* value; } ;
struct TYPE_3__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_1__ value; } ;
struct aw2 {int saa7146; } ;


 scalar_t__ CTL_ROUTE_ANALOG ;
 scalar_t__ CTL_ROUTE_DIGITAL ;
 int snd_aw2_saa7146_is_using_digital_input (int *) ;
 int snd_aw2_saa7146_use_digital_input (int *,int) ;
 struct aw2* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_aw2_control_switch_capture_put(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value
           *ucontrol)
{
 struct aw2 *chip = snd_kcontrol_chip(kcontrol);
 int changed = 0;
 int is_disgital =
     snd_aw2_saa7146_is_using_digital_input(&chip->saa7146);

 if (((ucontrol->value.integer.value[0] == CTL_ROUTE_DIGITAL)
      && !is_disgital)
     || ((ucontrol->value.integer.value[0] == CTL_ROUTE_ANALOG)
  && is_disgital)) {
  snd_aw2_saa7146_use_digital_input(&chip->saa7146, !is_disgital);
  changed = 1;
 }
 return changed;
}
