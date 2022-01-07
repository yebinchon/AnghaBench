
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
struct TYPE_8__ {int * hrtf; } ;
typedef TYPE_3__ a3dsrc_t ;


 int a3dsrc_SetHrtfCurrent (TYPE_3__*,int ,int ) ;
 int a3dsrc_SetHrtfTarget (TYPE_3__*,int ,int ) ;
 int vortex_a3d_coord2hrtf (int ,int*) ;

__attribute__((used)) static int
snd_vortex_a3d_hrtf_put(struct snd_kcontrol *kcontrol,
   struct snd_ctl_elem_value *ucontrol)
{
 a3dsrc_t *a = kcontrol->private_data;
 int i;
 int coord[6];
 for (i = 0; i < 6; i++)
  coord[i] = ucontrol->value.integer.value[i];

 vortex_a3d_coord2hrtf(a->hrtf[0], coord);
 vortex_a3d_coord2hrtf(a->hrtf[1], coord);
 a3dsrc_SetHrtfTarget(a, a->hrtf[0], a->hrtf[1]);
 a3dsrc_SetHrtfCurrent(a, a->hrtf[0], a->hrtf[1]);
 return 1;
}
