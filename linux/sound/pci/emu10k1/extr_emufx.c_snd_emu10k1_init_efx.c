
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int gpr_ctl; int irq_lock; } ;
struct snd_emu10k1 {scalar_t__ audigy; TYPE_1__ fx8010; } ;


 int INIT_LIST_HEAD (int *) ;
 int _snd_emu10k1_audigy_init_efx (struct snd_emu10k1*) ;
 int _snd_emu10k1_init_efx (struct snd_emu10k1*) ;
 int spin_lock_init (int *) ;

int snd_emu10k1_init_efx(struct snd_emu10k1 *emu)
{
 spin_lock_init(&emu->fx8010.irq_lock);
 INIT_LIST_HEAD(&emu->fx8010.gpr_ctl);
 if (emu->audigy)
  return _snd_emu10k1_audigy_init_efx(emu);
 else
  return _snd_emu10k1_init_efx(emu);
}
