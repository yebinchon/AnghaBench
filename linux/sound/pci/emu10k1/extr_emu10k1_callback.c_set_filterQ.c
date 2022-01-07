
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filterQ; } ;
struct TYPE_4__ {TYPE_1__ parm; } ;
struct snd_emux_voice {int ch; TYPE_2__ reg; } ;
struct snd_emu10k1 {int dummy; } ;


 int CCCA ;
 unsigned int CCCA_RESONANCE ;
 unsigned int snd_emu10k1_ptr_read (struct snd_emu10k1*,int ,int ) ;
 int snd_emu10k1_ptr_write (struct snd_emu10k1*,int ,int ,unsigned int) ;

__attribute__((used)) static void
set_filterQ(struct snd_emu10k1 *hw, struct snd_emux_voice *vp)
{
 unsigned int val;
 val = snd_emu10k1_ptr_read(hw, CCCA, vp->ch) & ~CCCA_RESONANCE;
 val |= (vp->reg.parm.filterQ << 28);
 snd_emu10k1_ptr_write(hw, CCCA, vp->ch, val);
}
