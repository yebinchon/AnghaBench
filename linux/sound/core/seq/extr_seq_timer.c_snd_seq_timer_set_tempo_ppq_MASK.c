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
struct snd_seq_timer {int ppq; int tempo; int /*<<< orphan*/  lock; scalar_t__ running; } ;

/* Variables and functions */
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_seq_timer*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC5(struct snd_seq_timer *tmr, int tempo, int ppq)
{
	int changed;
	unsigned long flags;

	if (FUNC1(!tmr))
		return -EINVAL;
	if (tempo <= 0 || ppq <= 0)
		return -EINVAL;
	FUNC3(&tmr->lock, flags);
	if (tmr->running && (ppq != tmr->ppq)) {
		/* refuse to change ppq on running timers */
		/* because it will upset the song position (ticks) */
		FUNC4(&tmr->lock, flags);
		FUNC0("ALSA: seq: cannot change ppq of a running timer\n");
		return -EBUSY;
	}
	changed = (tempo != tmr->tempo) || (ppq != tmr->ppq);
	tmr->tempo = tempo;
	tmr->ppq = ppq;
	if (changed)
		FUNC2(tmr);
	FUNC4(&tmr->lock, flags);
	return 0;
}