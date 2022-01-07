
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1968 {int* apu; } ;


 int EBUSY ;
 int ESM_APU_FREE ;
 int NR_APUS ;

__attribute__((used)) static int snd_es1968_alloc_apu_pair(struct es1968 *chip, int type)
{
 int apu;

 for (apu = 0; apu < NR_APUS; apu += 2) {
  if (chip->apu[apu] == ESM_APU_FREE &&
      chip->apu[apu + 1] == ESM_APU_FREE) {
   chip->apu[apu] = chip->apu[apu + 1] = type;
   return apu;
  }
 }
 return -EBUSY;
}
