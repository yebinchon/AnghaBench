
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_ice1712 {int i2c; TYPE_1__* card; struct ews_spec* spec; } ;
struct ews_spec {int * i2cdevs; } ;
struct TYPE_2__ {int dev; } ;


 int EIO ;
 size_t EWS_I2C_6FIRE ;
 int dev_err (int ,char*) ;
 int snd_i2c_lock (int ) ;
 int snd_i2c_readbytes (int ,unsigned char*,int) ;
 int snd_i2c_sendbytes (int ,unsigned char*,int) ;
 int snd_i2c_unlock (int ) ;

__attribute__((used)) static int snd_ice1712_6fire_read_pca(struct snd_ice1712 *ice, unsigned char reg)
{
 unsigned char byte;
 struct ews_spec *spec = ice->spec;

 snd_i2c_lock(ice->i2c);
 byte = reg;
 if (snd_i2c_sendbytes(spec->i2cdevs[EWS_I2C_6FIRE], &byte, 1) != 1) {
  snd_i2c_unlock(ice->i2c);
  dev_err(ice->card->dev, "cannot send pca\n");
  return -EIO;
 }

 byte = 0;
 if (snd_i2c_readbytes(spec->i2cdevs[EWS_I2C_6FIRE], &byte, 1) != 1) {
  snd_i2c_unlock(ice->i2c);
  dev_err(ice->card->dev, "cannot read pca\n");
  return -EIO;
 }
 snd_i2c_unlock(ice->i2c);
 return byte;
}
