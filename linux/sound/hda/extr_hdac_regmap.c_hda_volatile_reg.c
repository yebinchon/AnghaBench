
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int cache_coef; } ;
struct device {int dummy; } ;
 struct hdac_device* dev_to_hdac_dev (struct device*) ;
 unsigned int get_verb (unsigned int) ;

__attribute__((used)) static bool hda_volatile_reg(struct device *dev, unsigned int reg)
{
 struct hdac_device *codec = dev_to_hdac_dev(dev);
 unsigned int verb = get_verb(reg);

 switch (verb) {
 case 129:
  return !codec->cache_coef;
 case 141:
 case 128:
 case 130:
 case 131:
 case 134:
 case 132:
 case 135:
 case 136:
 case 133:
 case 137:
 case 138:
 case 139:
 case 140:
  return 1;
 }

 return 0;
}
