
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct es1968 {int * apu; } ;


 int ESM_APU_FREE ;

__attribute__((used)) static void snd_es1968_free_apu_pair(struct es1968 *chip, int apu)
{
 chip->apu[apu] = chip->apu[apu + 1] = ESM_APU_FREE;
}
