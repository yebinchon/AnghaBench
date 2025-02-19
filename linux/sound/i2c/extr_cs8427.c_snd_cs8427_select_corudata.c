
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_i2c_device {struct cs8427* private_data; } ;
struct cs8427 {int* regmap; } ;


 int CS8427_BSEL ;
 size_t CS8427_REG_CSDATABUF ;
 int snd_cs8427_reg_write (struct snd_i2c_device*,size_t,int) ;

__attribute__((used)) static int snd_cs8427_select_corudata(struct snd_i2c_device *device, int udata)
{
 struct cs8427 *chip = device->private_data;
 int err;

 udata = udata ? CS8427_BSEL : 0;
 if (udata != (chip->regmap[CS8427_REG_CSDATABUF] & udata)) {
  chip->regmap[CS8427_REG_CSDATABUF] &= ~CS8427_BSEL;
  chip->regmap[CS8427_REG_CSDATABUF] |= udata;
  err = snd_cs8427_reg_write(device, CS8427_REG_CSDATABUF,
        chip->regmap[CS8427_REG_CSDATABUF]);
  if (err < 0)
   return err;
 }
 return 0;
}
