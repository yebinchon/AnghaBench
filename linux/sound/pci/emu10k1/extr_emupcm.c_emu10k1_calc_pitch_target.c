
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int emu10k1_calc_pitch_target(unsigned int rate)
{
 unsigned int pitch_target;

 pitch_target = (rate << 8) / 375;
 pitch_target = (pitch_target >> 1) + (pitch_target & 1);
 return pitch_target;
}
