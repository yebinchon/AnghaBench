
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nau8825 {int regmap; } ;


 int NAU8825_HPL_VOL_MASK ;
 unsigned int NAU8825_HPL_VOL_SFT ;
 int NAU8825_HPR_VOL_MASK ;
 unsigned int NAU8825_HP_VOL_MIN ;
 int NAU8825_REG_HSVOL_CTRL ;
 int regmap_update_bits (int ,int ,int,unsigned int) ;
 int usleep_range (int,int) ;

__attribute__((used)) static void nau8825_hpvol_ramp(struct nau8825 *nau8825,
 unsigned int vol_from, unsigned int vol_to, unsigned int step)
{
 unsigned int value, volume, ramp_up, from, to;

 if (vol_from == vol_to || step == 0) {
  return;
 } else if (vol_from < vol_to) {
  ramp_up = 1;
  from = vol_from;
  to = vol_to;
 } else {
  ramp_up = 0;
  from = vol_to;
  to = vol_from;
 }

 if (to > NAU8825_HP_VOL_MIN)
  to = NAU8825_HP_VOL_MIN;

 for (volume = from; volume < to; volume += step) {
  if (ramp_up)
   value = volume;
  else
   value = to - volume + from;
  regmap_update_bits(nau8825->regmap, NAU8825_REG_HSVOL_CTRL,
   NAU8825_HPL_VOL_MASK | NAU8825_HPR_VOL_MASK,
   (value << NAU8825_HPL_VOL_SFT) | value);
  usleep_range(10000, 10500);
 }
 if (ramp_up)
  value = to;
 else
  value = from;
 regmap_update_bits(nau8825->regmap, NAU8825_REG_HSVOL_CTRL,
  NAU8825_HPL_VOL_MASK | NAU8825_HPR_VOL_MASK,
  (value << NAU8825_HPL_VOL_SFT) | value);
}
