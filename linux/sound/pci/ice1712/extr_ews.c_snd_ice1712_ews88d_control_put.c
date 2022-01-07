
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_kcontrol {int private_value; } ;
struct snd_ice1712 {int i2c; struct ews_spec* spec; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct ews_spec {int * i2cdevs; } ;


 int EIO ;
 size_t EWS_I2C_88D ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_readbytes (int ,unsigned char*,int) ;
 int snd_i2c_sendbytes (int ,unsigned char*,int) ;
 int snd_i2c_unlock (int ) ;
 struct snd_ice1712* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_ice1712_ews88d_control_put(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_value *ucontrol)
{
 struct snd_ice1712 *ice = snd_kcontrol_chip(kcontrol);
 struct ews_spec *spec = ice->spec;
 int shift = kcontrol->private_value & 0xff;
 int invert = (kcontrol->private_value >> 8) & 1;
 unsigned char data[2], ndata[2];
 int change;

 snd_i2c_lock(ice->i2c);
 if (snd_i2c_readbytes(spec->i2cdevs[EWS_I2C_88D], data, 2) != 2) {
  snd_i2c_unlock(ice->i2c);
  return -EIO;
 }
 ndata[shift >> 3] = data[shift >> 3] & ~(1 << (shift & 7));
 if (invert) {
  if (! ucontrol->value.integer.value[0])
   ndata[shift >> 3] |= (1 << (shift & 7));
 } else {
  if (ucontrol->value.integer.value[0])
   ndata[shift >> 3] |= (1 << (shift & 7));
 }
 change = (data[shift >> 3] != ndata[shift >> 3]);
 if (change &&
     snd_i2c_sendbytes(spec->i2cdevs[EWS_I2C_88D], data, 2) != 2) {
  snd_i2c_unlock(ice->i2c);
  return -EIO;
 }
 snd_i2c_unlock(ice->i2c);
 return change;
}
