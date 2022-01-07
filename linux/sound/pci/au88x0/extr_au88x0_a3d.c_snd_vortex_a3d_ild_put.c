
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct snd_kcontrol {TYPE_3__* private_data; } ;
struct TYPE_6__ {int* value; } ;
struct TYPE_7__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_8__ {int ild; } ;
typedef TYPE_3__ a3dsrc_t ;


 int a3dsrc_SetGainCurrent (TYPE_3__*,int,int) ;
 int a3dsrc_SetGainTarget (TYPE_3__*,int,int) ;
 int vortex_a3d_coord2ild (int ,int,int) ;

__attribute__((used)) static int
snd_vortex_a3d_ild_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 a3dsrc_t *a = kcontrol->private_data;
 int l, r;

 l = ucontrol->value.integer.value[0];
 r = ucontrol->value.integer.value[1];
 vortex_a3d_coord2ild(a->ild, l, r);

 a3dsrc_SetGainTarget(a, l, r);
 a3dsrc_SetGainCurrent(a, l, r);
 return 1;
}
