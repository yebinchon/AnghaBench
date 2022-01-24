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
 scalar_t__ DATA ; 
 int HLIPH ; 
 int HLIPL ; 
 scalar_t__ PTR ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC3(struct snd_emu10k1 *emu, unsigned int voicenum)
{
	unsigned long flags;

	FUNC1(&emu->emu_lock, flags);
	/* voice interrupt */
	if (voicenum >= 32) {
		FUNC0(HLIPH << 16, emu->port + PTR);
		voicenum = 1 << (voicenum - 32);
	} else {
		FUNC0(HLIPL << 16, emu->port + PTR);
		voicenum = 1 << voicenum;
	}
	FUNC0(voicenum, emu->port + DATA);
	FUNC2(&emu->emu_lock, flags);
}