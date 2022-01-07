
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int AC_AMP_SET_LEFT ;
 unsigned int AC_AMP_SET_RIGHT ;
 unsigned int AC_VERB_SET_AMP_GAIN_MUTE ;

__attribute__((used)) static bool is_stereo_amp_verb(unsigned int reg)
{
 if (((reg >> 8) & 0x700) != AC_VERB_SET_AMP_GAIN_MUTE)
  return 0;
 return (reg & (AC_AMP_SET_LEFT | AC_AMP_SET_RIGHT)) ==
  (AC_AMP_SET_LEFT | AC_AMP_SET_RIGHT);
}
