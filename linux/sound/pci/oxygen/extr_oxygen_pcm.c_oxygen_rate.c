
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;


 unsigned int OXYGEN_RATE_176400 ;
 unsigned int OXYGEN_RATE_192000 ;
 unsigned int OXYGEN_RATE_32000 ;
 unsigned int OXYGEN_RATE_44100 ;
 unsigned int OXYGEN_RATE_48000 ;
 unsigned int OXYGEN_RATE_64000 ;
 unsigned int OXYGEN_RATE_88200 ;
 unsigned int OXYGEN_RATE_96000 ;
 int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static unsigned int oxygen_rate(struct snd_pcm_hw_params *hw_params)
{
 switch (params_rate(hw_params)) {
 case 32000:
  return OXYGEN_RATE_32000;
 case 44100:
  return OXYGEN_RATE_44100;
 default:
  return OXYGEN_RATE_48000;
 case 64000:
  return OXYGEN_RATE_64000;
 case 88200:
  return OXYGEN_RATE_88200;
 case 96000:
  return OXYGEN_RATE_96000;
 case 176400:
  return OXYGEN_RATE_176400;
 case 192000:
  return OXYGEN_RATE_192000;
 }
}
