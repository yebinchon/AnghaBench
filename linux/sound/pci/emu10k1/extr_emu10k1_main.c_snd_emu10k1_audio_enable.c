
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_emu10k1 {int tos_link; scalar_t__ port; TYPE_1__* card_capabilities; scalar_t__ audigy; } ;
struct TYPE_2__ {scalar_t__ ca0108_chip; scalar_t__ ca0151_chip; scalar_t__ i2c_adc; scalar_t__ emu_model; } ;


 scalar_t__ A_IOCFG ;
 scalar_t__ HCFG ;
 unsigned int HCFG_AUDIOENABLE ;
 unsigned int HCFG_GPINPUT0 ;
 unsigned int HCFG_GPINPUT1 ;
 int INTE_PCIERRORENABLE ;
 int inl (scalar_t__) ;
 int outl (unsigned int,scalar_t__) ;
 int snd_emu10k1_intr_enable (struct snd_emu10k1*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void snd_emu10k1_audio_enable(struct snd_emu10k1 *emu)
{



 outl(inl(emu->port + HCFG) | HCFG_AUDIOENABLE, emu->port + HCFG);


 if (emu->card_capabilities->emu_model) {
  ;
 } else if (emu->card_capabilities->i2c_adc) {
  ;
 } else if (emu->audigy) {
  outl(inl(emu->port + A_IOCFG) & ~0x44, emu->port + A_IOCFG);

  if (emu->card_capabilities->ca0151_chip) {



   outl(inl(emu->port + A_IOCFG) | 0x0040, emu->port + A_IOCFG);
  } else if (emu->card_capabilities->ca0108_chip) {

   outl(inl(emu->port + A_IOCFG) | 0x0060, emu->port + A_IOCFG);
  } else {

   outl(inl(emu->port + A_IOCFG) | 0x0080, emu->port + A_IOCFG);
  }
 }
 snd_emu10k1_intr_enable(emu, INTE_PCIERRORENABLE);
}
