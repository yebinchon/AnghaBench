
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 unsigned int AC_AMP_GET_OUTPUT ;
 unsigned int AC_AMP_SET_INPUT ;
 unsigned int AC_AMP_SET_LEFT ;
 unsigned int AC_AMP_SET_OUTPUT ;
 unsigned int AC_AMP_SET_RIGHT ;
 int AC_VERB_SET_AMP_GAIN_MUTE ;
 int snd_hdac_exec_verb (struct hdac_device*,unsigned int,int ,int *) ;

__attribute__((used)) static int hda_reg_write_stereo_amp(struct hdac_device *codec,
        unsigned int reg, unsigned int val)
{
 int err;
 unsigned int verb, left, right;

 verb = AC_VERB_SET_AMP_GAIN_MUTE << 8;
 if (reg & AC_AMP_GET_OUTPUT)
  verb |= AC_AMP_SET_OUTPUT;
 else
  verb |= AC_AMP_SET_INPUT | ((reg & 0xf) << 8);
 reg = (reg & ~0xfffff) | verb;

 left = val & 0xff;
 right = (val >> 8) & 0xff;
 if (left == right) {
  reg |= AC_AMP_SET_LEFT | AC_AMP_SET_RIGHT;
  return snd_hdac_exec_verb(codec, reg | left, 0, ((void*)0));
 }

 err = snd_hdac_exec_verb(codec, reg | AC_AMP_SET_LEFT | left, 0, ((void*)0));
 if (err < 0)
  return err;
 err = snd_hdac_exec_verb(codec, reg | AC_AMP_SET_RIGHT | right, 0, ((void*)0));
 if (err < 0)
  return err;
 return 0;
}
