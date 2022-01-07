
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {size_t subdevice; int device; } ;
struct snd_kcontrol {TYPE_1__ id; } ;
struct TYPE_5__ {unsigned int* value; } ;
struct TYPE_6__ {TYPE_2__ integer; } ;
struct snd_ctl_elem_value {TYPE_3__ value; } ;
struct loopback_cable {unsigned int running; unsigned int pause; } ;
struct loopback {int cable_lock; struct loopback_cable*** cables; } ;


 int SNDRV_PCM_STREAM_PLAYBACK ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 struct loopback* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int loopback_active_get(struct snd_kcontrol *kcontrol,
          struct snd_ctl_elem_value *ucontrol)
{
 struct loopback *loopback = snd_kcontrol_chip(kcontrol);
 struct loopback_cable *cable;

 unsigned int val = 0;

 mutex_lock(&loopback->cable_lock);
 cable = loopback->cables[kcontrol->id.subdevice][kcontrol->id.device ^ 1];
 if (cable != ((void*)0)) {
  unsigned int running = cable->running ^ cable->pause;

  val = (running & (1 << SNDRV_PCM_STREAM_PLAYBACK)) ? 1 : 0;
 }
 mutex_unlock(&loopback->cable_lock);
 ucontrol->value.integer.value[0] = val;
 return 0;
}
