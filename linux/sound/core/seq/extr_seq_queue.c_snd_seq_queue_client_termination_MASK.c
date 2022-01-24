#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct snd_seq_queue {int owner; int klocked; TYPE_1__* timer; int /*<<< orphan*/  owner_lock; } ;
struct TYPE_3__ {scalar_t__ running; } ;

/* Variables and functions */
 int SNDRV_SEQ_MAX_QUEUES ; 
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 struct snd_seq_queue* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC6(int client)
{
	unsigned long flags;
	int i;
	struct snd_seq_queue *q;

	for (i = 0; i < SNDRV_SEQ_MAX_QUEUES; i++) {
		if ((q = FUNC1(i)) == NULL)
			continue;
		FUNC4(&q->owner_lock, flags);
		if (q->owner == client)
			q->klocked = 1;
		FUNC5(&q->owner_lock, flags);
		if (q->owner == client) {
			if (q->timer->running)
				FUNC3(q->timer);
			FUNC2(q->timer);
		}
		FUNC0(q);
	}
}