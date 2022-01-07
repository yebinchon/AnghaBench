
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int caps_overwriting; int regmap; } ;
typedef int hda_nid_t ;


 int AC_VERB_PARAMETERS ;
 int EINVAL ;
 int snd_hdac_regmap_write_raw (struct hdac_device*,unsigned int,unsigned int) ;

int snd_hdac_override_parm(struct hdac_device *codec, hda_nid_t nid,
      unsigned int parm, unsigned int val)
{
 unsigned int verb = (AC_VERB_PARAMETERS << 8) | (nid << 20) | parm;
 int err;

 if (!codec->regmap)
  return -EINVAL;

 codec->caps_overwriting = 1;
 err = snd_hdac_regmap_write_raw(codec, verb, val);
 codec->caps_overwriting = 0;
 return err;
}
