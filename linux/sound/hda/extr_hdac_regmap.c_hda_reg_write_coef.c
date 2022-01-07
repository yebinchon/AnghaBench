
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int cache_coef; } ;


 int AC_VERB_GET_COEF_INDEX ;
 int AC_VERB_SET_COEF_INDEX ;
 int EINVAL ;
 int snd_hdac_exec_verb (struct hdac_device*,unsigned int,int ,int *) ;

__attribute__((used)) static int hda_reg_write_coef(struct hdac_device *codec, unsigned int reg,
         unsigned int val)
{
 unsigned int verb;
 int err;

 if (!codec->cache_coef)
  return -EINVAL;

 verb = (reg & ~0xfff00) | (AC_VERB_SET_COEF_INDEX << 8);
 err = snd_hdac_exec_verb(codec, verb, 0, ((void*)0));
 if (err < 0)
  return err;
 verb = (reg & ~0xfffff) | (AC_VERB_GET_COEF_INDEX << 8) |
  (val & 0xffff);
 return snd_hdac_exec_verb(codec, verb, 0, ((void*)0));
}
