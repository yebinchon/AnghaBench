
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_4__ {int* value; } ;
struct TYPE_5__ {TYPE_1__ integer; } ;
struct TYPE_6__ {int index; } ;
struct snd_ctl_elem_value {TYPE_2__ value; TYPE_3__ id; } ;
struct hdspm {int lock; } ;


 int EINVAL ;
 int HDSPM_MAX_CHANNELS ;
 int UNITY_GAIN ;
 int hdspm_read_pb_gain (struct hdspm*,int,int) ;
 scalar_t__ snd_BUG_ON (int) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_get_playback_mixer(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);
 int channel;

 channel = ucontrol->id.index - 1;

 if (snd_BUG_ON(channel < 0 || channel >= HDSPM_MAX_CHANNELS))
  return -EINVAL;

 spin_lock_irq(&hdspm->lock);
 ucontrol->value.integer.value[0] =
   (hdspm_read_pb_gain(hdspm, channel, channel)*64)/UNITY_GAIN;
 spin_unlock_irq(&hdspm->lock);

 return 0;
}
