
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident_voice {unsigned int Vol; int number; int CTRL; } ;
struct snd_trident {int device; } ;


 int CH_GVSEL_PAN_VOL_CTRL_EC ;
 int T4D_LFO_GC_CIR ;



 int TRID_REG (struct snd_trident*,int ) ;
 int outb (int,int ) ;
 int outw (int,int ) ;

__attribute__((used)) static void snd_trident_write_vol_reg(struct snd_trident * trident,
          struct snd_trident_voice * voice,
          unsigned int Vol)
{
 voice->Vol = Vol;
 outb(voice->number, TRID_REG(trident, T4D_LFO_GC_CIR));
 switch (trident->device) {
 case 130:
 case 129:
  outb(voice->Vol >> 2, TRID_REG(trident, CH_GVSEL_PAN_VOL_CTRL_EC + 2));
  break;
 case 128:

  outw((voice->CTRL << 12) | voice->Vol,
       TRID_REG(trident, CH_GVSEL_PAN_VOL_CTRL_EC));
  break;
 }
}
