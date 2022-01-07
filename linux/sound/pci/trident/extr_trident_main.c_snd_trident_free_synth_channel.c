
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int ChanSynthCount; } ;
struct snd_trident {int* ChanMap; TYPE_1__ synth; } ;


 size_t T4D_BANK_A ;

__attribute__((used)) static void snd_trident_free_synth_channel(struct snd_trident *trident, int channel)
{
 if (channel < 0 || channel > 31)
  return;
 channel &= 0x1f;
 if (trident->ChanMap[T4D_BANK_A] & (1 << channel)) {
  trident->ChanMap[T4D_BANK_A] &= ~(1 << channel);
  trident->synth.ChanSynthCount--;
 }
}
