
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
struct ct_atc {int (* output_switch_get ) (struct ct_atc*) ;} ;


 struct ct_atc* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int stub1 (struct ct_atc*) ;

__attribute__((used)) static int output_switch_get(struct snd_kcontrol *kcontrol,
        struct snd_ctl_elem_value *ucontrol)
{
 struct ct_atc *atc = snd_kcontrol_chip(kcontrol);
 ucontrol->value.enumerated.item[0] = atc->output_switch_get(atc);
 return 0;
}
