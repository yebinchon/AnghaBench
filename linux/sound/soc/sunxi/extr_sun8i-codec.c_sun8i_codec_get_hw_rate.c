
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_params {int dummy; } ;


 int EINVAL ;
 unsigned int params_rate (struct snd_pcm_hw_params*) ;

__attribute__((used)) static int sun8i_codec_get_hw_rate(struct snd_pcm_hw_params *params)
{
 unsigned int rate = params_rate(params);

 switch (rate) {
 case 8000:
 case 7350:
  return 0x0;
 case 11025:
  return 0x1;
 case 12000:
  return 0x2;
 case 16000:
  return 0x3;
 case 22050:
  return 0x4;
 case 24000:
  return 0x5;
 case 32000:
  return 0x6;
 case 44100:
  return 0x7;
 case 48000:
  return 0x8;
 case 96000:
  return 0x9;
 case 192000:
  return 0xa;
 default:
  return -EINVAL;
 }
}
