
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_ad1816a {int dummy; } ;
typedef int snd_pcm_format_t ;


 unsigned char AD1816A_FMT_ALAW_8 ;
 unsigned char AD1816A_FMT_LINEAR_16_BIG ;
 unsigned char AD1816A_FMT_LINEAR_16_LIT ;
 unsigned char AD1816A_FMT_LINEAR_8 ;
 unsigned char AD1816A_FMT_STEREO ;
 unsigned char AD1816A_FMT_ULAW_8 ;





__attribute__((used)) static unsigned char snd_ad1816a_get_format(struct snd_ad1816a *chip,
         snd_pcm_format_t format,
         int channels)
{
 unsigned char retval = AD1816A_FMT_LINEAR_8;

 switch (format) {
 case 130:
  retval = AD1816A_FMT_ULAW_8;
  break;
 case 131:
  retval = AD1816A_FMT_ALAW_8;
  break;
 case 128:
  retval = AD1816A_FMT_LINEAR_16_LIT;
  break;
 case 129:
  retval = AD1816A_FMT_LINEAR_16_BIG;
 }
 return (channels > 1) ? (retval | AD1816A_FMT_STEREO) : retval;
}
