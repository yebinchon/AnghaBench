
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int regmap; } ;


 int hda_reg_write (struct hdac_device*,unsigned int,unsigned int) ;
 int regmap_write (int ,unsigned int,unsigned int) ;

__attribute__((used)) static int reg_raw_write(struct hdac_device *codec, unsigned int reg,
    unsigned int val)
{
 if (!codec->regmap)
  return hda_reg_write(codec, reg, val);
 else
  return regmap_write(codec->regmap, reg, val);
}
