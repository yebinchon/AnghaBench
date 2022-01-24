#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ fraction; int /*<<< orphan*/  cur_tick; } ;
struct snd_seq_timer {int /*<<< orphan*/  lock; TYPE_1__ tick; } ;
typedef  int /*<<< orphan*/  snd_seq_tick_time_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC3(struct snd_seq_timer *tmr,
				    snd_seq_tick_time_t position)
{
	unsigned long flags;

	if (FUNC0(!tmr))
		return -EINVAL;

	FUNC1(&tmr->lock, flags);
	tmr->tick.cur_tick = position;
	tmr->tick.fraction = 0;
	FUNC2(&tmr->lock, flags);
	return 0;
}