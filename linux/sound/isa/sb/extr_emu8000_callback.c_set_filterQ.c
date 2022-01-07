
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int filterQ; } ;
struct TYPE_4__ {TYPE_1__ parm; } ;
struct snd_emux_voice {int ch; TYPE_2__ reg; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_CCCA_READ (struct snd_emu8000*,int ) ;
 int EMU8000_CCCA_WRITE (struct snd_emu8000*,int ,unsigned int) ;

__attribute__((used)) static void
set_filterQ(struct snd_emu8000 *hw, struct snd_emux_voice *vp)
{
 unsigned int addr;
 addr = EMU8000_CCCA_READ(hw, vp->ch) & 0xffffff;
 addr |= (vp->reg.parm.filterQ << 28);
 EMU8000_CCCA_WRITE(hw, vp->ch, addr);
}
