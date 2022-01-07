
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int vortex_t ;
typedef void* u16 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {void** value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int * snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vortex_Eqlzr_GetLeftGain (int *,int,void**) ;
 int vortex_Eqlzr_GetRightGain (int *,int,void**) ;

__attribute__((used)) static int
snd_vortex_eq_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 vortex_t *vortex = snd_kcontrol_chip(kcontrol);
 int i = kcontrol->private_value;
 u16 gainL = 0, gainR = 0;

 vortex_Eqlzr_GetLeftGain(vortex, i, &gainL);
 vortex_Eqlzr_GetRightGain(vortex, i, &gainR);
 ucontrol->value.integer.value[0] = gainL;
 ucontrol->value.integer.value[1] = gainR;
 return 0;
}
