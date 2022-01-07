
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {scalar_t__ device; } ;


 unsigned int BANK_B_EN ;
 unsigned int ENDLP_IE ;
 unsigned int MIDLP_IE ;
 int T4D_LFO_GC_CIR ;
 scalar_t__ TRIDENT_DEVICE_ID_SI7018 ;
 int TRID_REG (struct snd_trident*,int ) ;
 unsigned int inl (int ) ;
 int outl (unsigned int,int ) ;

__attribute__((used)) static void snd_trident_enable_eso(struct snd_trident * trident)
{
 unsigned int val;

 val = inl(TRID_REG(trident, T4D_LFO_GC_CIR));
 val |= ENDLP_IE;
 val |= MIDLP_IE;
 if (trident->device == TRIDENT_DEVICE_ID_SI7018)
  val |= BANK_B_EN;
 outl(val, TRID_REG(trident, T4D_LFO_GC_CIR));
}
