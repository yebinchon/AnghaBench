
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int ARRAY_SIZE (int *) ;
 int EINVAL ;
 int SND_RME_CLK_AES (int ) ;
 int SND_RME_CLK_SPDIF (int ) ;
 int SND_RME_CLK_SYSTEM (int ) ;



 int SND_RME_RATE_IDX_AES_SPDIF_NUM ;
 int snd_rme_get_status1 (struct snd_kcontrol*,int *) ;
 int * snd_rme_rate_table ;

__attribute__((used)) static int snd_rme_rate_get(struct snd_kcontrol *kcontrol,
       struct snd_ctl_elem_value *ucontrol)
{
 u32 status1;
 u32 rate = 0;
 int idx;
 int err;

 err = snd_rme_get_status1(kcontrol, &status1);
 if (err < 0)
  return err;
 switch (kcontrol->private_value) {
 case 128:
  idx = SND_RME_CLK_SYSTEM(status1);
  if (idx < ARRAY_SIZE(snd_rme_rate_table))
   rate = snd_rme_rate_table[idx];
  break;
 case 130:
  idx = SND_RME_CLK_AES(status1);
  if (idx < SND_RME_RATE_IDX_AES_SPDIF_NUM)
   rate = snd_rme_rate_table[idx];
  break;
 case 129:
  idx = SND_RME_CLK_SPDIF(status1);
  if (idx < SND_RME_RATE_IDX_AES_SPDIF_NUM)
   rate = snd_rme_rate_table[idx];
  break;
 default:
  return -EINVAL;
 }
 ucontrol->value.integer.value[0] = rate;
 return 0;
}
