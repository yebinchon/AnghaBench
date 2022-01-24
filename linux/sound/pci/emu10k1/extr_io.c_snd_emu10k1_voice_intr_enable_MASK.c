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
struct snd_emu10k1 {int /*<<< orphan*/  emu_lock; scalar_t__ port; } ;

/* Variables and functions */
 int CLIEH ; 
 int CLIEL ; 
 scalar_t__ DATA ; 
 scalar_t__ PTR ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct snd_emu10k1 *emu, unsigned int voicenum)
{
	unsigned long flags;
	unsigned int val;

	FUNC2(&emu->emu_lock, flags);
	/* voice interrupt */
	if (voicenum >= 32) {
		FUNC1(CLIEH << 16, emu->port + PTR);
		val = FUNC0(emu->port + DATA);
		val |= 1 << (voicenum - 32);
	} else {
		FUNC1(CLIEL << 16, emu->port + PTR);
		val = FUNC0(emu->port + DATA);
		val |= 1 << voicenum;
	}
	FUNC1(val, emu->port + DATA);
	FUNC3(&emu->emu_lock, flags);
}