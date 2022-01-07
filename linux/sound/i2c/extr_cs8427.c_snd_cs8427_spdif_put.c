
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct snd_pcm_runtime {int dummy; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct snd_i2c_device {int bus; struct cs8427* private_data; } ;
struct TYPE_7__ {int status; } ;
struct TYPE_8__ {TYPE_3__ iec958; } ;
struct snd_ctl_elem_value {TYPE_4__ value; } ;
struct TYPE_6__ {unsigned char* pcm_status; unsigned char* def_status; TYPE_1__* substream; } ;
struct cs8427 {TYPE_2__ playback; } ;
struct TYPE_5__ {struct snd_pcm_runtime* runtime; } ;


 scalar_t__ memcmp (int ,unsigned char*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 int snd_cs8427_send_corudata (struct snd_i2c_device*,int ,unsigned char*,int) ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_unlock (int ) ;
 struct snd_i2c_device* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_cs8427_spdif_put(struct snd_kcontrol *kcontrol,
    struct snd_ctl_elem_value *ucontrol)
{
 struct snd_i2c_device *device = snd_kcontrol_chip(kcontrol);
 struct cs8427 *chip = device->private_data;
 unsigned char *status = kcontrol->private_value ?
  chip->playback.pcm_status : chip->playback.def_status;
 struct snd_pcm_runtime *runtime = chip->playback.substream ?
  chip->playback.substream->runtime : ((void*)0);
 int err, change;

 snd_i2c_lock(device->bus);
 change = memcmp(ucontrol->value.iec958.status, status, 24) != 0;
 memcpy(status, ucontrol->value.iec958.status, 24);
 if (change && (kcontrol->private_value ?
         runtime != ((void*)0) : runtime == ((void*)0))) {
  err = snd_cs8427_send_corudata(device, 0, status, 24);
  if (err < 0)
   change = err;
 }
 snd_i2c_unlock(device->bus);
 return change;
}
