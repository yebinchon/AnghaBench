
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ volrelease; scalar_t__ modrelease; } ;
struct TYPE_4__ {TYPE_1__ parm; } ;
struct snd_emux_voice {int ch; TYPE_2__ reg; struct snd_emu8000* hw; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_DCYSUSV_WRITE (struct snd_emu8000*,int ,int) ;
 int EMU8000_DCYSUS_WRITE (struct snd_emu8000*,int ,int) ;

__attribute__((used)) static void
release_voice(struct snd_emux_voice *vp)
{
 int dcysusv;
 struct snd_emu8000 *hw;

 hw = vp->hw;
 dcysusv = 0x8000 | (unsigned char)vp->reg.parm.modrelease;
 EMU8000_DCYSUS_WRITE(hw, vp->ch, dcysusv);
 dcysusv = 0x8000 | (unsigned char)vp->reg.parm.volrelease;
 EMU8000_DCYSUSV_WRITE(hw, vp->ch, dcysusv);
}
