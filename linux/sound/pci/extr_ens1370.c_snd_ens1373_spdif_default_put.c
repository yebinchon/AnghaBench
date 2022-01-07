
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* status; } ;
struct TYPE_4__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ensoniq {unsigned int spdif_default; int reg_lock; int * playback2_substream; int * playback1_substream; } ;


 int CHANNEL_STATUS ;
 int ES_REG (struct ensoniq*,int ) ;
 int outl (unsigned int,int ) ;
 struct ensoniq* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_ens1373_spdif_default_put(struct snd_kcontrol *kcontrol,
                                         struct snd_ctl_elem_value *ucontrol)
{
 struct ensoniq *ensoniq = snd_kcontrol_chip(kcontrol);
 unsigned int val;
 int change;

 val = ((u32)ucontrol->value.iec958.status[0] << 0) |
       ((u32)ucontrol->value.iec958.status[1] << 8) |
       ((u32)ucontrol->value.iec958.status[2] << 16) |
       ((u32)ucontrol->value.iec958.status[3] << 24);
 spin_lock_irq(&ensoniq->reg_lock);
 change = ensoniq->spdif_default != val;
 ensoniq->spdif_default = val;
 if (change && ensoniq->playback1_substream == ((void*)0) &&
     ensoniq->playback2_substream == ((void*)0))
  outl(val, ES_REG(ensoniq, CHANNEL_STATUS));
 spin_unlock_irq(&ensoniq->reg_lock);
 return change;
}
