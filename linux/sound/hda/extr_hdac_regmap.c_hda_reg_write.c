
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hdac_device {int addr; scalar_t__ lazy_cache; scalar_t__ caps_overwriting; } ;


 unsigned int AC_AMP_FAKE_MUTE ;
 unsigned int AC_AMP_GET_LEFT ;
 unsigned int AC_AMP_GET_OUTPUT ;
 unsigned int AC_AMP_MUTE ;
 int AC_AMP_SET_INPUT ;
 int AC_AMP_SET_LEFT ;
 int AC_AMP_SET_OUTPUT ;
 int AC_AMP_SET_RIGHT ;



 unsigned int AC_VERB_SET_POWER_STATE ;
 unsigned int AC_VERB_SET_PROC_COEF ;
 int EAGAIN ;
 int codec_pm_lock (struct hdac_device*) ;
 int codec_pm_unlock (struct hdac_device*,int) ;
 unsigned int get_verb (unsigned int) ;
 int hda_reg_write_coef (struct hdac_device*,unsigned int,unsigned int) ;
 int hda_reg_write_stereo_amp (struct hdac_device*,unsigned int,unsigned int) ;
 scalar_t__ is_stereo_amp_verb (unsigned int) ;
 int snd_hdac_exec_verb (struct hdac_device*,unsigned int,int ,int *) ;

__attribute__((used)) static int hda_reg_write(void *context, unsigned int reg, unsigned int val)
{
 struct hdac_device *codec = context;
 unsigned int verb;
 int i, bytes, err;
 int pm_lock = 0;

 if (codec->caps_overwriting)
  return 0;

 reg &= ~0x00080000U;
 reg |= (codec->addr << 28);
 verb = get_verb(reg);

 if (verb != AC_VERB_SET_POWER_STATE) {
  pm_lock = codec_pm_lock(codec);
  if (pm_lock < 0)
   return codec->lazy_cache ? 0 : -EAGAIN;
 }

 if (is_stereo_amp_verb(reg)) {
  err = hda_reg_write_stereo_amp(codec, reg, val);
  goto out;
 }

 if (verb == AC_VERB_SET_PROC_COEF) {
  err = hda_reg_write_coef(codec, reg, val);
  goto out;
 }

 switch (verb & 0xf00) {
 case 130:
  if ((reg & AC_AMP_FAKE_MUTE) && (val & AC_AMP_MUTE))
   val = 0;
  verb = 130;
  if (reg & AC_AMP_GET_LEFT)
   verb |= AC_AMP_SET_LEFT >> 8;
  else
   verb |= AC_AMP_SET_RIGHT >> 8;
  if (reg & AC_AMP_GET_OUTPUT) {
   verb |= AC_AMP_SET_OUTPUT >> 8;
  } else {
   verb |= AC_AMP_SET_INPUT >> 8;
   verb |= reg & 0xf;
  }
  break;
 }

 switch (verb) {
 case 128:
  bytes = 2;
  break;
 case 129:
  bytes = 4;
  break;
 default:
  bytes = 1;
  break;
 }

 for (i = 0; i < bytes; i++) {
  reg &= ~0xfffff;
  reg |= (verb + i) << 8 | ((val >> (8 * i)) & 0xff);
  err = snd_hdac_exec_verb(codec, reg, 0, ((void*)0));
  if (err < 0)
   goto out;
 }

 out:
 codec_pm_unlock(codec, pm_lock);
 return err;
}
