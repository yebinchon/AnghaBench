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
struct snd_emu8000 {int last_reg; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int /*<<< orphan*/ ,int) ; 
 int EMU8000_DRAM_VOICES ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_emu8000*) ; 

__attribute__((used)) static void
FUNC12(struct snd_emu8000 *emu)
{
	int i;

	emu->last_reg = 0xffff; /* reset the last register index */

	/* initialize hardware configuration */
	FUNC1(emu, 0x0059);
	FUNC2(emu, 0x0020);

	/* disable audio; this seems to reduce a clicking noise a bit.. */
	FUNC3(emu, 0);

	/* initialize audio channels */
	FUNC5(emu);

	/* initialize DMA */
	FUNC6(emu);

	/* initialize init arrays */
	FUNC4(emu);

	/*
	 * Initialize the FM section of the AWE32, this is needed
	 * for DRAM refresh as well
	 */
	FUNC8(emu);

	/* terminate all voices */
	for (i = 0; i < EMU8000_DRAM_VOICES; i++)
		FUNC0(emu, 0, 0x807F);
	
	/* check DRAM memory size */
	FUNC7(emu);

	/* enable audio */
	FUNC3(emu, 0x4);

	/* set equzlier, chorus and reverb modes */
	FUNC10(emu);
	FUNC9(emu);
	FUNC11(emu);
}