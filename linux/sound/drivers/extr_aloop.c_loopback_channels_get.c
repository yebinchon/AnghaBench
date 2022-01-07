
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t subdevice; size_t device; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_6__ {int * value; } ;
struct TYPE_7__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct loopback {int cable_lock; TYPE_4__** setup; } ;
struct TYPE_8__ {int channels; } ;


 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct loopback* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int loopback_channels_get(struct snd_kcontrol *kcontrol,
     struct snd_ctl_elem_value *ucontrol)
{
 struct loopback *loopback = snd_kcontrol_chip(kcontrol);

 mutex_lock(&loopback->cable_lock);
 ucontrol->value.integer.value[0] =
  loopback->setup[kcontrol->id.subdevice]
          [kcontrol->id.device].channels;
 mutex_unlock(&loopback->cable_lock);
 return 0;
}
