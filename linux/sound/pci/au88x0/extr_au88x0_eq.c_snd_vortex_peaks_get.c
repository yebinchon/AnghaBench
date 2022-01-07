
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {TYPE_3__* card; } ;
typedef TYPE_4__ vortex_t ;
typedef int u16 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_7__ {int * value; } ;
struct TYPE_8__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_9__ {int dev; } ;


 int dev_err (int ,char*,int) ;
 TYPE_4__* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int vortex_Eqlzr_GetAllPeaks (TYPE_4__*,int *,int*) ;

__attribute__((used)) static int
snd_vortex_peaks_get(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 vortex_t *vortex = snd_kcontrol_chip(kcontrol);
 int i, count = 0;
 u16 peaks[20];

 vortex_Eqlzr_GetAllPeaks(vortex, peaks, &count);
 if (count != 20) {
  dev_err(vortex->card->dev,
   "peak count error 20 != %d\n", count);
  return -1;
 }
 for (i = 0; i < 20; i++)
  ucontrol->value.integer.value[i] = peaks[i];

 return 0;
}
