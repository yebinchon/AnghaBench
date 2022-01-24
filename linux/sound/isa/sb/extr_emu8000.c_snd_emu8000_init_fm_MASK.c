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
struct snd_emu8000 {int fm_chorus_depth; int fm_reverb_depth; int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu8000*,int,int) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_emu8000*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 

void
FUNC16(struct snd_emu8000 *emu)
{
	unsigned long flags;

	/* Initialize the last two channels for DRAM refresh and producing
	   the reverb and chorus effects for Yamaha OPL-3 synthesizer */

	/* 31: FM left channel, 0xffffe0-0xffffe8 */
	FUNC6(emu, 30, 0x80);
	FUNC7(emu, 30, 0xFFFFFFE0); /* full left */
	FUNC3(emu, 30, 0x00FFFFE8 | (emu->fm_chorus_depth << 24));
	FUNC9(emu, 30, (emu->fm_reverb_depth << 8));
	FUNC2(emu, 30, 0);
	FUNC0(emu, 30, 0x00FFFFE3);

	/* 32: FM right channel, 0xfffff0-0xfffff8 */
	FUNC6(emu, 31, 0x80);
	FUNC7(emu, 31, 0x00FFFFF0); /* full right */
	FUNC3(emu, 31, 0x00FFFFF8 | (emu->fm_chorus_depth << 24));
	FUNC9(emu, 31, (emu->fm_reverb_depth << 8));
	FUNC2(emu, 31, 0x8000);
	FUNC0(emu, 31, 0x00FFFFF3);

	FUNC13((emu), FUNC4(emu), FUNC1(1, (30)), 0);

	FUNC14(&emu->reg_lock, flags);
	while (!(FUNC11(FUNC8(emu)) & 0x1000))
		;
	while ((FUNC11(FUNC8(emu)) & 0x1000))
		;
	FUNC15(&emu->reg_lock, flags);
	FUNC13((emu), FUNC4(emu), FUNC1(1, (30)), 0x4828);
	/* this is really odd part.. */
	FUNC12(0x3C, FUNC8(emu));
	FUNC12(0, FUNC5(emu));

	/* skew volume & cutoff */
	FUNC10(emu, 30, 0x8000FFFF);
	FUNC10(emu, 31, 0x8000FFFF);
}