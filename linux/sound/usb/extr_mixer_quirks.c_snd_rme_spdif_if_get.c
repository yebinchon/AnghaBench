
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int SND_RME_SPDIF_IF (int ) ;
 int snd_rme_get_status1 (struct snd_kcontrol*,int *) ;

__attribute__((used)) static int snd_rme_spdif_if_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 u32 status1;
 int err;

 err = snd_rme_get_status1(kcontrol, &status1);
 if (err < 0)
  return err;
 ucontrol->value.enumerated.item[0] = SND_RME_SPDIF_IF(status1);
 return 0;
}
