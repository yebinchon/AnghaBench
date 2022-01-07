
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct aw2 {int saa7146; } ;


 int CTL_ROUTE_ANALOG ;
 int CTL_ROUTE_DIGITAL ;
 scalar_t__ snd_aw2_saa7146_is_using_digital_input (int *) ;
 struct aw2* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_aw2_control_switch_capture_get(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_value
           *ucontrol)
{
 struct aw2 *chip = snd_kcontrol_chip(kcontrol);
 if (snd_aw2_saa7146_is_using_digital_input(&chip->saa7146))
  ucontrol->value.enumerated.item[0] = CTL_ROUTE_DIGITAL;
 else
  ucontrol->value.enumerated.item[0] = CTL_ROUTE_ANALOG;
 return 0;
}
