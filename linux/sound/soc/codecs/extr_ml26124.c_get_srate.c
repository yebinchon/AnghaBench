
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;

__attribute__((used)) static inline int get_srate(int rate)
{
 int srate;

 switch (rate) {
 case 16000:
  srate = 3;
  break;
 case 32000:
  srate = 6;
  break;
 case 48000:
  srate = 8;
  break;
 default:
  return -EINVAL;
 }
 return srate;
}
