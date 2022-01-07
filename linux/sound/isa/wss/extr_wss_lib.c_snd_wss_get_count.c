
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char CS4231_STEREO ;

__attribute__((used)) static unsigned int snd_wss_get_count(unsigned char format, unsigned int size)
{
 switch (format & 0xe0) {
 case 129:
 case 128:
  size >>= 1;
  break;
 case 130:
  return size >> 2;
 }
 if (format & CS4231_STEREO)
  size >>= 1;
 return size;
}
