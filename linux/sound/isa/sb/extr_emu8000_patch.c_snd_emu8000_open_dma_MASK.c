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
struct snd_emu8000 {int /*<<< orphan*/  emu; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int,int) ; 
 int EMU8000_DRAM_VOICES ; 
 int /*<<< orphan*/  FUNC2 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct snd_emu8000 *emu, int write)
{
	int i;

	/* reserve all 30 voices for loading */
	for (i = 0; i < EMU8000_DRAM_VOICES; i++) {
		FUNC5(emu->emu, i);
		FUNC4(emu, i, write);
	}

	/* assign voice 31 and 32 to ROM */
	FUNC3(emu, 30, 0);
	FUNC2(emu, 30, 0x1d8);
	FUNC1(emu, 30, 0x1e0);
	FUNC0(emu, 30, 0x1d8);
	FUNC3(emu, 31, 0);
	FUNC2(emu, 31, 0x1d8);
	FUNC1(emu, 31, 0x1e0);
	FUNC0(emu, 31, 0x1d8);

	return 0;
}