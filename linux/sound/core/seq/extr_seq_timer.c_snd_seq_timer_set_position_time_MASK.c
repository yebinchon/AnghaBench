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
struct snd_seq_timer {int /*<<< orphan*/  lock; int /*<<< orphan*/  cur_time; } ;
typedef  int /*<<< orphan*/  snd_seq_real_time_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

int FUNC4(struct snd_seq_timer *tmr,
				    snd_seq_real_time_t position)
{
	unsigned long flags;

	if (FUNC0(!tmr))
		return -EINVAL;

	FUNC1(&position);
	FUNC2(&tmr->lock, flags);
	tmr->cur_time = position;
	FUNC3(&tmr->lock, flags);
	return 0;
}