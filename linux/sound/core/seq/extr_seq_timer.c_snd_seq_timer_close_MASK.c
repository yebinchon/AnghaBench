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
struct snd_timer_instance {int dummy; } ;
struct snd_seq_timer {int /*<<< orphan*/  lock; struct snd_timer_instance* timeri; } ;
struct snd_seq_queue {struct snd_seq_timer* timer; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer_instance*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

int FUNC4(struct snd_seq_queue *q)
{
	struct snd_seq_timer *tmr;
	struct snd_timer_instance *t;
	
	tmr = q->timer;
	if (FUNC0(!tmr))
		return -EINVAL;
	FUNC2(&tmr->lock);
	t = tmr->timeri;
	tmr->timeri = NULL;
	FUNC3(&tmr->lock);
	if (t)
		FUNC1(t);
	return 0;
}