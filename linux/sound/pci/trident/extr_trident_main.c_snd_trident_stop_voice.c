
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int dummy; } ;


 unsigned int T4D_STOP_A ;
 unsigned int T4D_STOP_B ;
 int TRID_REG (struct snd_trident*,unsigned int) ;
 int outl (unsigned int,int ) ;

void snd_trident_stop_voice(struct snd_trident * trident, unsigned int voice)
{
 unsigned int mask = 1 << (voice & 0x1f);
 unsigned int reg = (voice & 0x20) ? T4D_STOP_B : T4D_STOP_A;

 outl(mask, TRID_REG(trident, reg));
}
