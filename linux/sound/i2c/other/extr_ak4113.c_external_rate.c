
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char AK4113_FS0 ;
 unsigned char AK4113_FS1 ;
 unsigned char AK4113_FS2 ;
 unsigned char AK4113_FS3 ;
__attribute__((used)) static unsigned int external_rate(unsigned char rcs1)
{
 switch (rcs1 & (AK4113_FS0|AK4113_FS1|AK4113_FS2|AK4113_FS3)) {
 case 130:
  return 8000;
 case 140:
  return 11025;
 case 139:
  return 16000;
 case 136:
  return 22050;
 case 135:
  return 24000;
 case 134:
  return 32000;
 case 133:
  return 44100;
 case 132:
  return 48000;
 case 131:
  return 64000;
 case 129:
  return 88200;
 case 128:
  return 96000;
 case 138:
  return 176400;
 case 137:
  return 192000;
 default:
  return 0;
 }
}
