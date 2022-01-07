
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int KIRKWOOD_PLAYCTL_I2S_EN ;
 unsigned int KIRKWOOD_PLAYCTL_I2S_MUTE ;
 unsigned int KIRKWOOD_PLAYCTL_SPDIF_EN ;
 unsigned int KIRKWOOD_PLAYCTL_SPDIF_MUTE ;

__attribute__((used)) static unsigned kirkwood_i2s_play_mute(unsigned ctl)
{
 if (!(ctl & KIRKWOOD_PLAYCTL_I2S_EN))
  ctl |= KIRKWOOD_PLAYCTL_I2S_MUTE;
 if (!(ctl & KIRKWOOD_PLAYCTL_SPDIF_EN))
  ctl |= KIRKWOOD_PLAYCTL_SPDIF_MUTE;
 return ctl;
}
