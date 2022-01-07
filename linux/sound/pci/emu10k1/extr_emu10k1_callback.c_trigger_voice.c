
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int voldcysus; } ;
struct TYPE_4__ {TYPE_1__ parm; } ;
struct snd_emux_voice {int apan; unsigned int aaux; TYPE_2__ reg; int ch; int apitch; scalar_t__ ptarget; scalar_t__ block; struct snd_emu10k1* hw; } ;
struct snd_emu10k1_memblk {scalar_t__ mapped_page; } ;
struct snd_emu10k1 {int dummy; } ;


 int CPF ;
 int DCYSUSV ;
 unsigned int DCYSUSV_CHANNELENABLE_MASK ;
 unsigned int IP_TO_CP (int ) ;
 int PTRX ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,unsigned int) ;

__attribute__((used)) static void
trigger_voice(struct snd_emux_voice *vp)
{
 unsigned int temp, ptarget;
 struct snd_emu10k1 *hw;
 struct snd_emu10k1_memblk *emem;

 hw = vp->hw;

 emem = (struct snd_emu10k1_memblk *)vp->block;
 if (! emem || emem->mapped_page < 0)
  return;




 ptarget = IP_TO_CP(vp->apitch);


 temp = ptarget | (vp->apan << 8) | vp->aaux;
 snd_emu10k1_ptr_write(hw, PTRX, vp->ch, temp);


 snd_emu10k1_ptr_write(hw, CPF, vp->ch, ptarget);


 snd_emu10k1_ptr_write(hw, DCYSUSV, vp->ch, vp->reg.parm.voldcysus|DCYSUSV_CHANNELENABLE_MASK);
}
