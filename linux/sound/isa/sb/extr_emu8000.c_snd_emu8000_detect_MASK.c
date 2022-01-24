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
struct snd_emu8000 {int /*<<< orphan*/  port1; } ;

/* Variables and functions */
 int FUNC0 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_emu8000*,int) ; 
 int FUNC2 (struct snd_emu8000*) ; 
 int /*<<< orphan*/  FUNC3 (struct snd_emu8000*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_emu8000*,int) ; 
 int ENODEV ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC6(struct snd_emu8000 *emu)
{
	/* Initialise */
	FUNC1(emu, 0x0059);
	FUNC3(emu, 0x0020);
	FUNC4(emu, 0x0000);
	/* Check for a recognisable emu8000 */
	/*
	if ((EMU8000_U1_READ(emu) & 0x000f) != 0x000c)
		return -ENODEV;
		*/
	if ((FUNC0(emu) & 0x007e) != 0x0058)
		return -ENODEV;
	if ((FUNC2(emu) & 0x0003) != 0x0003)
		return -ENODEV;

	FUNC5("EMU8000 [0x%lx]: Synth chip found\n",
                    emu->port1);
	return 0;
}