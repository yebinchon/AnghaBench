
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 int __snd_hdac_regmap_read_raw (struct hdac_device*,unsigned int,unsigned int*,int) ;

int snd_hdac_regmap_read_raw_uncached(struct hdac_device *codec,
          unsigned int reg, unsigned int *val)
{
 return __snd_hdac_regmap_read_raw(codec, reg, val, 1);
}
