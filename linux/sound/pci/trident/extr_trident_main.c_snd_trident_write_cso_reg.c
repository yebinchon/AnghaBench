
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {unsigned int CSO; int Delta; int number; } ;
struct snd_trident {scalar_t__ device; } ;


 int CH_DX_CSO_ALPHA_FMS ;
 int CH_NX_DELTA_CSO ;
 int T4D_LFO_GC_CIR ;
 scalar_t__ TRIDENT_DEVICE_ID_NX ;
 scalar_t__ TRID_REG (struct snd_trident*,int ) ;
 int outb (int ,scalar_t__) ;
 int outl (int,scalar_t__) ;
 int outw (unsigned int,scalar_t__) ;

__attribute__((used)) static void snd_trident_write_cso_reg(struct snd_trident * trident,
          struct snd_trident_voice * voice,
          unsigned int CSO)
{
 voice->CSO = CSO;
 outb(voice->number, TRID_REG(trident, T4D_LFO_GC_CIR));
 if (trident->device != TRIDENT_DEVICE_ID_NX) {
  outw(voice->CSO, TRID_REG(trident, CH_DX_CSO_ALPHA_FMS) + 2);
 } else {
  outl((voice->Delta << 24) |
       (voice->CSO & 0x00ffffff), TRID_REG(trident, CH_NX_DELTA_CSO));
 }
}
