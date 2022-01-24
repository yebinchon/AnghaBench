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
struct snd_timer_instance {struct snd_seq_queue* callback_data; } ;
struct snd_seq_timer {unsigned long skew; unsigned long skew_base; int /*<<< orphan*/  lock; int /*<<< orphan*/  last_update; int /*<<< orphan*/  tick; int /*<<< orphan*/  cur_time; int /*<<< orphan*/  running; } ;
struct snd_seq_queue {struct snd_seq_timer* timer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_seq_queue*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct snd_timer_instance *timeri,
				    unsigned long resolution,
				    unsigned long ticks)
{
	unsigned long flags;
	struct snd_seq_queue *q = timeri->callback_data;
	struct snd_seq_timer *tmr;

	if (q == NULL)
		return;
	tmr = q->timer;
	if (tmr == NULL)
		return;
	FUNC4(&tmr->lock, flags);
	if (!tmr->running) {
		FUNC5(&tmr->lock, flags);
		return;
	}

	resolution *= ticks;
	if (tmr->skew != tmr->skew_base) {
		/* FIXME: assuming skew_base = 0x10000 */
		resolution = (resolution >> 16) * tmr->skew +
			(((resolution & 0xffff) * tmr->skew) >> 16);
	}

	/* update timer */
	FUNC2(&tmr->cur_time, resolution);

	/* calculate current tick */
	FUNC3(&tmr->tick, resolution);

	/* register actual time of this timer update */
	FUNC0(&tmr->last_update);

	FUNC5(&tmr->lock, flags);

	/* check queues and dispatch events */
	FUNC1(q, 1, 0);
}