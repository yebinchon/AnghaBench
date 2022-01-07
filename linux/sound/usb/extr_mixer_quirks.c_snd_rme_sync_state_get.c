
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int private_value; } ;
struct TYPE_3__ {int* item; } ;
struct TYPE_4__ {TYPE_1__ enumerated; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 int EINVAL ;
 int SND_RME_CLK_AES_LOCK ;
 int SND_RME_CLK_AES_SYNC ;
 int SND_RME_CLK_SPDIF_LOCK ;
 int SND_RME_CLK_SPDIF_SYNC ;
 int SND_RME_CLOCK_LOCK ;
 int SND_RME_CLOCK_NOLOCK ;
 int SND_RME_CLOCK_SYNC ;


 int snd_rme_get_status1 (struct snd_kcontrol*,int*) ;

__attribute__((used)) static int snd_rme_sync_state_get(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 u32 status1;
 int idx = SND_RME_CLOCK_NOLOCK;
 int err;

 err = snd_rme_get_status1(kcontrol, &status1);
 if (err < 0)
  return err;
 switch (kcontrol->private_value) {
 case 129:
  if (status1 & SND_RME_CLK_AES_SYNC)
   idx = SND_RME_CLOCK_SYNC;
  else if (status1 & SND_RME_CLK_AES_LOCK)
   idx = SND_RME_CLOCK_LOCK;
  break;
 case 128:
  if (status1 & SND_RME_CLK_SPDIF_SYNC)
   idx = SND_RME_CLOCK_SYNC;
  else if (status1 & SND_RME_CLK_SPDIF_LOCK)
   idx = SND_RME_CLOCK_LOCK;
  break;
 default:
  return -EINVAL;
 }
 ucontrol->value.enumerated.item[0] = idx;
 return 0;
}
