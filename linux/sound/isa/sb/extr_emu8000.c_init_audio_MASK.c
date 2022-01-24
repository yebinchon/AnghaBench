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
struct snd_emu8000 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int EMU8000_CHANNELS ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC21(struct snd_emu8000 *emu)
{
	int ch;

	/* turn off envelope engines */
	for (ch = 0; ch < EMU8000_CHANNELS; ch++)
		FUNC6(emu, ch, 0x80);
  
	/* reset all other parameters to zero */
	for (ch = 0; ch < EMU8000_CHANNELS; ch++) {
		FUNC9(emu, ch, 0);
		FUNC8(emu, ch, 0);
		FUNC7(emu, ch, 0);
		FUNC0(emu, ch, 0);
		FUNC14(emu, ch, 0);
		FUNC1(emu, ch, 0);
		FUNC15(emu, ch, 0);
		FUNC13(emu, ch, 0);
		FUNC12(emu, ch, 0);
		FUNC16(emu, ch, 0);
		FUNC11(emu, ch, 0);
		FUNC19(emu, ch, 0);
		FUNC10(emu, ch, 0);
		FUNC18(emu, ch, 0);
		FUNC20(emu, ch, 0);
		FUNC17(emu, ch, 0);
		FUNC4(emu, ch, 0);
		FUNC2(emu, ch, 0);
	}

	for (ch = 0; ch < EMU8000_CHANNELS; ch++) {
		FUNC3(emu, ch, 0);
		FUNC5(emu, ch, 0);
	}
}