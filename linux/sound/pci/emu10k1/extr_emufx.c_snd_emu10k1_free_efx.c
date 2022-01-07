
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int dbg; } ;
struct snd_emu10k1 {TYPE_1__ fx8010; scalar_t__ audigy; } ;


 int A_DBG ;
 int A_DBG_SINGLE_STEP ;
 int DBG ;
 int EMU10K1_DBG_SINGLE_STEP ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,int ) ;

void snd_emu10k1_free_efx(struct snd_emu10k1 *emu)
{

 if (emu->audigy)
  snd_emu10k1_ptr_write(emu, A_DBG, 0, emu->fx8010.dbg = A_DBG_SINGLE_STEP);
 else
  snd_emu10k1_ptr_write(emu, DBG, 0, emu->fx8010.dbg = EMU10K1_DBG_SINGLE_STEP);
}
