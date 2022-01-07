
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct snd_kcontrol {int dummy; } ;
struct snd_i2c_device {int bus; struct cs8427* private_data; } ;
struct TYPE_4__ {int status; } ;
struct TYPE_5__ {TYPE_1__ iec958; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct TYPE_6__ {int def_status; } ;
struct cs8427 {TYPE_3__ playback; } ;


 int memcpy (int ,int ,int) ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_unlock (int ) ;
 struct snd_i2c_device* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cs8427_spdif_get(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_i2c_device *device = snd_kcontrol_chip(kcontrol);
 struct cs8427 *chip = device->private_data;

 snd_i2c_lock(device->bus);
 memcpy(ucontrol->value.iec958.status, chip->playback.def_status, 24);
 snd_i2c_unlock(device->bus);
 return 0;
}
