
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int dummy; } ;


 unsigned int AC_AMP_GET_LEFT ;
 unsigned int AC_AMP_GET_RIGHT ;
 unsigned int AC_AMP_SET_LEFT ;
 unsigned int AC_AMP_SET_RIGHT ;
 int snd_hdac_exec_verb (struct hdac_device*,unsigned int,int ,unsigned int*) ;

__attribute__((used)) static int hda_reg_read_stereo_amp(struct hdac_device *codec,
       unsigned int reg, unsigned int *val)
{
 unsigned int left, right;
 int err;

 reg &= ~(AC_AMP_SET_LEFT | AC_AMP_SET_RIGHT);
 err = snd_hdac_exec_verb(codec, reg | AC_AMP_GET_LEFT, 0, &left);
 if (err < 0)
  return err;
 err = snd_hdac_exec_verb(codec, reg | AC_AMP_GET_RIGHT, 0, &right);
 if (err < 0)
  return err;
 *val = left | (right << 8);
 return 0;
}
