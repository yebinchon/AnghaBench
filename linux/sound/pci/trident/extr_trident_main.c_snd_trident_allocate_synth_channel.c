
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ChanSynthCount; } ;
struct snd_trident {int* ChanMap; TYPE_1__ synth; } ;


 size_t T4D_BANK_A ;

__attribute__((used)) static int snd_trident_allocate_synth_channel(struct snd_trident * trident)
{
 int idx;

 for (idx = 31; idx >= 0; idx--) {
  if (!(trident->ChanMap[T4D_BANK_A] & (1 << idx))) {
   trident->ChanMap[T4D_BANK_A] |= 1 << idx;
   trident->synth.ChanSynthCount++;
   return idx;
  }
 }
 return -1;
}
