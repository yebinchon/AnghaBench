
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_card {int dev; } ;
typedef int snd_pcm_format_t ;







 unsigned int SRC_SF_F32 ;
 unsigned int SRC_SF_S16 ;
 unsigned int SRC_SF_S24 ;
 unsigned int SRC_SF_S32 ;
 unsigned int SRC_SF_U8 ;
 int dev_err (int ,char*,int) ;

__attribute__((used)) static unsigned int convert_format(snd_pcm_format_t snd_format,
       struct snd_card *card)
{
 switch (snd_format) {
 case 128:
  return SRC_SF_U8;
 case 131:
  return SRC_SF_S16;
 case 130:
  return SRC_SF_S24;
 case 129:
  return SRC_SF_S32;
 case 132:
  return SRC_SF_F32;
 default:
  dev_err(card->dev, "not recognized snd format is %d\n",
   snd_format);
  return SRC_SF_S16;
 }
}
