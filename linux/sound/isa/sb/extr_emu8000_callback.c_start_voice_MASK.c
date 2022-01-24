#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_midi_channel {scalar_t__* control; } ;
struct TYPE_3__ {unsigned int chorus; unsigned int filterQ; int /*<<< orphan*/  lfo2delay; int /*<<< orphan*/  lfo1delay; int /*<<< orphan*/  pefe; int /*<<< orphan*/  volatkhld; int /*<<< orphan*/  voldelay; int /*<<< orphan*/  moddcysus; int /*<<< orphan*/  modatkhld; int /*<<< orphan*/  moddelay; } ;
struct TYPE_4__ {int loopend; int start; TYPE_1__ parm; } ;
struct snd_emux_voice {int ch; int vtarget; unsigned int ftarget; TYPE_2__ reg; struct snd_midi_channel* chan; struct snd_emu8000* hw; } ;
struct snd_emu8000 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu8000*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu8000*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_emu8000*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC17 (unsigned int,int) ; 
 size_t MIDI_CTL_E3_CHORUS_DEPTH ; 
 int /*<<< orphan*/  FUNC18 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC19 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC20 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC21 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC22 (struct snd_emu8000*,struct snd_emux_voice*) ; 
 int /*<<< orphan*/  FUNC23 (struct snd_emu8000*,struct snd_emux_voice*) ; 

__attribute__((used)) static int
FUNC24(struct snd_emux_voice *vp)
{
	unsigned int temp;
	int ch;
	int addr;
	struct snd_midi_channel *chan;
	struct snd_emu8000 *hw;

	hw = vp->hw;
	ch = vp->ch;
	chan = vp->chan;

	/* channel to be silent and idle */
	FUNC8(hw, ch, 0x0080);
	FUNC16(hw, ch, 0x0000FFFF);
	FUNC7(hw, ch, 0x0000FFFF);
	FUNC15(hw, ch, 0);
	FUNC5(hw, ch, 0);

	/* set pitch offset */
	FUNC21(hw, vp);

	/* set envelope parameters */
	FUNC10(hw, ch, vp->reg.parm.moddelay);
	FUNC3(hw, ch, vp->reg.parm.modatkhld);
	FUNC9(hw, ch, vp->reg.parm.moddcysus);
	FUNC11(hw, ch, vp->reg.parm.voldelay);
	FUNC2(hw, ch, vp->reg.parm.volatkhld);
	/* decay/sustain parameter for volume envelope is used
	   for triggerg the voice */

	/* cutoff and volume */
	FUNC23(hw, vp);

	/* modulation envelope heights */
	FUNC14(hw, ch, vp->reg.parm.pefe);

	/* lfo1/2 delay */
	FUNC12(hw, ch, vp->reg.parm.lfo1delay);
	FUNC13(hw, ch, vp->reg.parm.lfo2delay);

	/* lfo1 pitch & cutoff shift */
	FUNC19(hw, vp);
	/* lfo1 volume & freq */
	FUNC22(hw, vp);
	/* lfo2 pitch & freq */
	FUNC18(hw, vp);
	/* pan & loop start */
	FUNC20(hw, vp);

	/* chorus & loop end (chorus 8bit, MSB) */
	addr = vp->reg.loopend - 1;
	temp = vp->reg.parm.chorus;
	temp += (int)chan->control[MIDI_CTL_E3_CHORUS_DEPTH] * 9 / 10;
	FUNC17(temp, 255);
	temp = (temp <<24) | (unsigned int)addr;
	FUNC6(hw, ch, temp);

	/* Q & current address (Q 4bit value, MSB) */
	addr = vp->reg.start - 1;
	temp = vp->reg.parm.filterQ;
	temp = (temp<<28) | (unsigned int)addr;
	FUNC4(hw, ch, temp);

	/* clear unknown registers */
	FUNC1(hw, ch, 0);
	FUNC0(hw, ch, 0);

	/* reset volume */
	temp = vp->vtarget << 16;
	FUNC16(hw, ch, temp | vp->ftarget);
	FUNC7(hw, ch, temp | 0xff00);

	return 0;
}