
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct snd_soc_component {int dummy; } ;


 int DA7219_SR ;
 int DA7219_SR_11025 ;
 int DA7219_SR_12000 ;
 int DA7219_SR_16000 ;
 int DA7219_SR_22050 ;
 int DA7219_SR_24000 ;
 int DA7219_SR_32000 ;
 int DA7219_SR_44100 ;
 int DA7219_SR_48000 ;
 int DA7219_SR_8000 ;
 int DA7219_SR_88200 ;
 int DA7219_SR_96000 ;
 int EINVAL ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int ) ;

__attribute__((used)) static int da7219_set_sr(struct snd_soc_component *component,
    unsigned long rate)
{
 u8 fs;

 switch (rate) {
 case 8000:
  fs = DA7219_SR_8000;
  break;
 case 11025:
  fs = DA7219_SR_11025;
  break;
 case 12000:
  fs = DA7219_SR_12000;
  break;
 case 16000:
  fs = DA7219_SR_16000;
  break;
 case 22050:
  fs = DA7219_SR_22050;
  break;
 case 24000:
  fs = DA7219_SR_24000;
  break;
 case 32000:
  fs = DA7219_SR_32000;
  break;
 case 44100:
  fs = DA7219_SR_44100;
  break;
 case 48000:
  fs = DA7219_SR_48000;
  break;
 case 88200:
  fs = DA7219_SR_88200;
  break;
 case 96000:
  fs = DA7219_SR_96000;
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_write(component, DA7219_SR, fs);

 return 0;
}
