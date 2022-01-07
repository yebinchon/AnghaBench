
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ loopstart; } ;
struct snd_emux_voice {int ch; TYPE_1__ reg; scalar_t__ apan; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_PSST_WRITE (struct snd_emu8000*,int ,unsigned int) ;

__attribute__((used)) static void
set_pan(struct snd_emu8000 *hw, struct snd_emux_voice *vp)
{
 unsigned int temp;

 temp = ((unsigned int)vp->apan<<24) | ((unsigned int)vp->reg.loopstart - 1);
 EMU8000_PSST_WRITE(hw, vp->ch, temp);
}
