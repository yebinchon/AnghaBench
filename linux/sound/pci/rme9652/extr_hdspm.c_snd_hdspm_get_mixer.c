
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct hdspm {int lock; } ;


 int HDSPM_MAX_CHANNELS ;
 int hdspm_read_in_gain (struct hdspm*,int,int) ;
 int hdspm_read_pb_gain (struct hdspm*,int,int) ;
 struct hdspm* snd_kcontrol_chip (struct snd_kcontrol*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static int snd_hdspm_get_mixer(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct hdspm *hdspm = snd_kcontrol_chip(kcontrol);
 int source;
 int destination;

 source = ucontrol->value.integer.value[0];
 if (source < 0)
  source = 0;
 else if (source >= 2 * HDSPM_MAX_CHANNELS)
  source = 2 * HDSPM_MAX_CHANNELS - 1;

 destination = ucontrol->value.integer.value[1];
 if (destination < 0)
  destination = 0;
 else if (destination >= HDSPM_MAX_CHANNELS)
  destination = HDSPM_MAX_CHANNELS - 1;

 spin_lock_irq(&hdspm->lock);
 if (source >= HDSPM_MAX_CHANNELS)
  ucontrol->value.integer.value[2] =
      hdspm_read_pb_gain(hdspm, destination,
           source - HDSPM_MAX_CHANNELS);
 else
  ucontrol->value.integer.value[2] =
      hdspm_read_in_gain(hdspm, destination, source);

 spin_unlock_irq(&hdspm->lock);

 return 0;
}
