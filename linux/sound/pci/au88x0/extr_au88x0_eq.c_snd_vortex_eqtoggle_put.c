
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {int this54; } ;
struct TYPE_9__ {TYPE_4__ eq; } ;
typedef TYPE_3__ vortex_t ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_8__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
typedef TYPE_4__ eqlzr_t ;


 TYPE_3__* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vortex_Eqlzr_SetBypass (TYPE_3__*,int) ;

__attribute__((used)) static int
snd_vortex_eqtoggle_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 vortex_t *vortex = snd_kcontrol_chip(kcontrol);
 eqlzr_t *eq = &(vortex->eq);


 eq->this54 = ucontrol->value.integer.value[0] ? 0 : 1;
 vortex_Eqlzr_SetBypass(vortex, eq->this54);

 return 1;
}
