
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_trident {int dummy; } ;


 int T4D_AINTEN_A ;
 int T4D_AINTEN_B ;
 int T4D_STOP_A ;
 int T4D_STOP_B ;
 int TRID_REG (struct snd_trident*,int ) ;
 int outl (int,int ) ;

__attribute__((used)) static void snd_trident_stop_all_voices(struct snd_trident *trident)
{
 outl(0xffffffff, TRID_REG(trident, T4D_STOP_A));
 outl(0xffffffff, TRID_REG(trident, T4D_STOP_B));
 outl(0, TRID_REG(trident, T4D_AINTEN_A));
 outl(0, TRID_REG(trident, T4D_AINTEN_B));
}
