
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_cs4231 {int dummy; } ;


 unsigned char CS4231_ADPCM_16 ;
 unsigned char CS4231_ALAW_8 ;
 unsigned char CS4231_LINEAR_16 ;
 unsigned char CS4231_LINEAR_16_BIG ;
 unsigned char CS4231_LINEAR_8 ;
 unsigned char CS4231_STEREO ;
 unsigned char CS4231_ULAW_8 ;






__attribute__((used)) static unsigned char snd_cs4231_get_format(struct snd_cs4231 *chip, int format,
        int channels)
{
 unsigned char rformat;

 rformat = CS4231_LINEAR_8;
 switch (format) {
 case 130:
  rformat = CS4231_ULAW_8;
  break;
 case 132:
  rformat = CS4231_ALAW_8;
  break;
 case 128:
  rformat = CS4231_LINEAR_16;
  break;
 case 129:
  rformat = CS4231_LINEAR_16_BIG;
  break;
 case 131:
  rformat = CS4231_ADPCM_16;
  break;
 }
 if (channels > 1)
  rformat |= CS4231_STEREO;
 return rformat;
}
