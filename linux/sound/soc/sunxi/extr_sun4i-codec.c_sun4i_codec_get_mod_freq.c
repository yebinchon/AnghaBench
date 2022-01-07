
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;


 unsigned int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static unsigned long sun4i_codec_get_mod_freq(struct snd_pcm_hw_params *params)
{
 unsigned int rate = params_rate(params);

 switch (rate) {
 case 176400:
 case 88200:
 case 44100:
 case 33075:
 case 22050:
 case 14700:
 case 11025:
 case 7350:
  return 22579200;

 case 192000:
 case 96000:
 case 48000:
 case 32000:
 case 24000:
 case 16000:
 case 12000:
 case 8000:
  return 24576000;

 default:
  return 0;
 }
}
