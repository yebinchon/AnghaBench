
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {scalar_t__ caps_overwriting; } ;
struct device {int dummy; } ;
 struct hdac_device* dev_to_hdac_dev (struct device*) ;
 unsigned int get_verb (unsigned int) ;
 int hda_writeable_reg (struct device*,unsigned int) ;

__attribute__((used)) static bool hda_readable_reg(struct device *dev, unsigned int reg)
{
 struct hdac_device *codec = dev_to_hdac_dev(dev);
 unsigned int verb = get_verb(reg);

 if (codec->caps_overwriting)
  return 1;

 switch (verb) {
 case 128:
 case 132:
 case 129:
  return 1;



 case 133:
 case 131:
 case 130:
  return 1;
 }

 return hda_writeable_reg(dev, reg);
}
