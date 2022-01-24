#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_queue {int check_blocked; int check_again; int /*<<< orphan*/  check_lock; TYPE_2__* timer; int /*<<< orphan*/  timeq; int /*<<< orphan*/  tickq; } ;
struct snd_seq_event_cell {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  cur_tick; } ;
struct TYPE_4__ {int /*<<< orphan*/  cur_time; TYPE_1__ tick; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_seq_event_cell*,int,int) ; 
 struct snd_seq_event_cell* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(struct snd_seq_queue *q, int atomic, int hop)
{
	unsigned long flags;
	struct snd_seq_event_cell *cell;

	if (q == NULL)
		return;

	/* make this function non-reentrant */
	FUNC2(&q->check_lock, flags);
	if (q->check_blocked) {
		q->check_again = 1;
		FUNC3(&q->check_lock, flags);
		return;		/* other thread is already checking queues */
	}
	q->check_blocked = 1;
	FUNC3(&q->check_lock, flags);

      __again:
	/* Process tick queue... */
	for (;;) {
		cell = FUNC1(q->tickq,
					      &q->timer->tick.cur_tick);
		if (!cell)
			break;
		FUNC0(cell, atomic, hop);
	}

	/* Process time queue... */
	for (;;) {
		cell = FUNC1(q->timeq, &q->timer->cur_time);
		if (!cell)
			break;
		FUNC0(cell, atomic, hop);
	}

	/* free lock */
	FUNC2(&q->check_lock, flags);
	if (q->check_again) {
		q->check_again = 0;
		FUNC3(&q->check_lock, flags);
		goto __again;
	}
	q->check_blocked = 0;
	FUNC3(&q->check_lock, flags);
}