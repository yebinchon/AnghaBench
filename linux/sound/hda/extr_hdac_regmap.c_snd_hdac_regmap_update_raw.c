
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 int snd_hdac_regmap_read_raw (struct hdac_device*,unsigned int,unsigned int*) ;
 int snd_hdac_regmap_write_raw (struct hdac_device*,unsigned int,unsigned int) ;

int snd_hdac_regmap_update_raw(struct hdac_device *codec, unsigned int reg,
          unsigned int mask, unsigned int val)
{
 unsigned int orig;
 int err;

 val &= mask;
 err = snd_hdac_regmap_read_raw(codec, reg, &orig);
 if (err < 0)
  return err;
 val |= orig & ~mask;
 if (val == orig)
  return 0;
 err = snd_hdac_regmap_write_raw(codec, reg, val);
 if (err < 0)
  return err;
 return 1;
}
