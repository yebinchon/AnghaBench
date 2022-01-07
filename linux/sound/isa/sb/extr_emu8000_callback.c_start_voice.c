
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_midi_channel {scalar_t__* control; } ;
struct TYPE_3__ {unsigned int chorus; unsigned int filterQ; int lfo2delay; int lfo1delay; int pefe; int volatkhld; int voldelay; int moddcysus; int modatkhld; int moddelay; } ;
struct TYPE_4__ {int loopend; int start; TYPE_1__ parm; } ;
struct snd_emux_voice {int ch; int vtarget; unsigned int ftarget; TYPE_2__ reg; struct snd_midi_channel* chan; struct snd_emu8000* hw; } ;
struct snd_emu8000 {int dummy; } ;


 int EMU8000_0080_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_00A0_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_ATKHLDV_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_ATKHLD_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_CCCA_WRITE (struct snd_emu8000*,int,unsigned int) ;
 int EMU8000_CPF_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_CSL_WRITE (struct snd_emu8000*,int,unsigned int) ;
 int EMU8000_CVCF_WRITE (struct snd_emu8000*,int,unsigned int) ;
 int EMU8000_DCYSUSV_WRITE (struct snd_emu8000*,int,int) ;
 int EMU8000_DCYSUS_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_ENVVAL_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_ENVVOL_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_LFO1VAL_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_LFO2VAL_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_PEFE_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_PTRX_WRITE (struct snd_emu8000*,int,int ) ;
 int EMU8000_VTFT_WRITE (struct snd_emu8000*,int,unsigned int) ;
 int LIMITMAX (unsigned int,int) ;
 size_t MIDI_CTL_E3_CHORUS_DEPTH ;
 int set_fm2frq2 (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_fmmod (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_pan (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_pitch (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_tremfreq (struct snd_emu8000*,struct snd_emux_voice*) ;
 int set_volume (struct snd_emu8000*,struct snd_emux_voice*) ;

__attribute__((used)) static int
start_voice(struct snd_emux_voice *vp)
{
 unsigned int temp;
 int ch;
 int addr;
 struct snd_midi_channel *chan;
 struct snd_emu8000 *hw;

 hw = vp->hw;
 ch = vp->ch;
 chan = vp->chan;


 EMU8000_DCYSUSV_WRITE(hw, ch, 0x0080);
 EMU8000_VTFT_WRITE(hw, ch, 0x0000FFFF);
 EMU8000_CVCF_WRITE(hw, ch, 0x0000FFFF);
 EMU8000_PTRX_WRITE(hw, ch, 0);
 EMU8000_CPF_WRITE(hw, ch, 0);


 set_pitch(hw, vp);


 EMU8000_ENVVAL_WRITE(hw, ch, vp->reg.parm.moddelay);
 EMU8000_ATKHLD_WRITE(hw, ch, vp->reg.parm.modatkhld);
 EMU8000_DCYSUS_WRITE(hw, ch, vp->reg.parm.moddcysus);
 EMU8000_ENVVOL_WRITE(hw, ch, vp->reg.parm.voldelay);
 EMU8000_ATKHLDV_WRITE(hw, ch, vp->reg.parm.volatkhld);




 set_volume(hw, vp);


 EMU8000_PEFE_WRITE(hw, ch, vp->reg.parm.pefe);


 EMU8000_LFO1VAL_WRITE(hw, ch, vp->reg.parm.lfo1delay);
 EMU8000_LFO2VAL_WRITE(hw, ch, vp->reg.parm.lfo2delay);


 set_fmmod(hw, vp);

 set_tremfreq(hw, vp);

 set_fm2frq2(hw, vp);

 set_pan(hw, vp);


 addr = vp->reg.loopend - 1;
 temp = vp->reg.parm.chorus;
 temp += (int)chan->control[MIDI_CTL_E3_CHORUS_DEPTH] * 9 / 10;
 LIMITMAX(temp, 255);
 temp = (temp <<24) | (unsigned int)addr;
 EMU8000_CSL_WRITE(hw, ch, temp);


 addr = vp->reg.start - 1;
 temp = vp->reg.parm.filterQ;
 temp = (temp<<28) | (unsigned int)addr;
 EMU8000_CCCA_WRITE(hw, ch, temp);


 EMU8000_00A0_WRITE(hw, ch, 0);
 EMU8000_0080_WRITE(hw, ch, 0);


 temp = vp->vtarget << 16;
 EMU8000_VTFT_WRITE(hw, ch, temp | vp->ftarget);
 EMU8000_CVCF_WRITE(hw, ch, temp | 0xff00);

 return 0;
}
