
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static inline int snd_cs4235_mixer_output_accu_get_volume(int vol)
{
 switch ((vol >> 5) & 3) {
 case 0: return 1;
 case 1: return 3;
 case 2: return 2;
 case 3: return 0;
  }
 return 3;
}
