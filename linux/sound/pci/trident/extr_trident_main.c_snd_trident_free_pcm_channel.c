
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int* ChanMap; int ChanPCMcnt; } ;


 size_t T4D_BANK_B ;

__attribute__((used)) static void snd_trident_free_pcm_channel(struct snd_trident *trident, int channel)
{
 if (channel < 32 || channel > 63)
  return;
 channel &= 0x1f;
 if (trident->ChanMap[T4D_BANK_B] & (1 << channel)) {
  trident->ChanMap[T4D_BANK_B] &= ~(1 << channel);
  trident->ChanPCMcnt--;
 }
}
