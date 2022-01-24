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
struct snd_seq_queue {int /*<<< orphan*/  timer; int /*<<< orphan*/  timeq; int /*<<< orphan*/  tickq; int /*<<< orphan*/  use_lock; int /*<<< orphan*/  timer_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_seq_queue*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_seq_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct snd_seq_queue *q)
{
	/* stop and release the timer */
	FUNC1(&q->timer_mutex);
	FUNC6(q->timer);
	FUNC4(q);
	FUNC2(&q->timer_mutex);
	/* wait until access free */
	FUNC7(&q->use_lock);
	/* release resources... */
	FUNC3(&q->tickq);
	FUNC3(&q->timeq);
	FUNC5(&q->timer);

	FUNC0(q);
}