#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct snd_emu8k_pcm {unsigned int* panning; unsigned int buf_size; scalar_t__* loop_start; int /*<<< orphan*/  pitch; struct snd_emu8000* emu; } ;
struct snd_emu8000 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu8000*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_emu8000*,int,unsigned int) ; 
 int /*<<< orphan*/  FUNC19 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (struct snd_emu8000*,int,int) ; 

__attribute__((used)) static void FUNC22(struct snd_emu8k_pcm *rec, int ch)
{
	struct snd_emu8000 *hw = rec->emu;
	unsigned int temp;

	/* channel to be silent and idle */
	FUNC8(hw, ch, 0x0080);
	FUNC21(hw, ch, 0x0000FFFF);
	FUNC7(hw, ch, 0x0000FFFF);
	FUNC19(hw, ch, 0);
	FUNC5(hw, ch, 0);

	/* pitch offset */
	FUNC14(hw, ch, rec->pitch);
	/* set envelope parameters */
	FUNC10(hw, ch, 0x8000);
	FUNC3(hw, ch, 0x7f7f);
	FUNC9(hw, ch, 0x7f7f);
	FUNC11(hw, ch, 0x8000);
	FUNC2(hw, ch, 0x7f7f);
	/* decay/sustain parameter for volume envelope is used
	   for triggerg the voice */
	/* modulation envelope heights */
	FUNC17(hw, ch, 0x0);
	/* lfo1/2 delay */
	FUNC15(hw, ch, 0x8000);
	FUNC16(hw, ch, 0x8000);
	/* lfo1 pitch & cutoff shift */
	FUNC13(hw, ch, 0);
	/* lfo1 volume & freq */
	FUNC20(hw, ch, 0);
	/* lfo2 pitch & freq */
	FUNC12(hw, ch, 0);
	/* pan & loop start */
	temp = rec->panning[ch];
	temp = (temp <<24) | ((unsigned int)rec->loop_start[ch] - 1);
	FUNC18(hw, ch, temp);
	/* chorus & loop end (chorus 8bit, MSB) */
	temp = 0; // chorus
	temp = (temp << 24) | ((unsigned int)rec->loop_start[ch] + rec->buf_size - 1);
	FUNC6(hw, ch, temp);
	/* Q & current address (Q 4bit value, MSB) */
	temp = 0; // filterQ
	temp = (temp << 28) | ((unsigned int)rec->loop_start[ch] - 1);
	FUNC4(hw, ch, temp);
	/* clear unknown registers */
	FUNC1(hw, ch, 0);
	FUNC0(hw, ch, 0);
}