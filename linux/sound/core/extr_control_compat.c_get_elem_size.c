
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_aes_iec958 {int dummy; } ;
typedef int s64 ;







__attribute__((used)) static int get_elem_size(int type, int count)
{
 switch (type) {
 case 128:
  return sizeof(s64) * count;
 case 130:
  return sizeof(int) * count;
 case 131:
  return 512;
 case 129:
  return sizeof(struct snd_aes_iec958);
 default:
  return -1;
 }
}
