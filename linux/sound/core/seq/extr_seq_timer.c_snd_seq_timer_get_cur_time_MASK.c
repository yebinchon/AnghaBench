#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct timespec64 {scalar_t__ tv_sec; scalar_t__ tv_nsec; } ;
struct TYPE_4__ {int /*<<< orphan*/  tv_sec; int /*<<< orphan*/  tv_nsec; } ;
struct snd_seq_timer {int /*<<< orphan*/  lock; int /*<<< orphan*/  last_update; scalar_t__ running; TYPE_1__ cur_time; } ;
typedef  TYPE_1__ snd_seq_real_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec64*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 struct timespec64 FUNC4 (struct timespec64,int /*<<< orphan*/ ) ; 

snd_seq_real_time_t FUNC5(struct snd_seq_timer *tmr)
{
	snd_seq_real_time_t cur_time;
	unsigned long flags;

	FUNC2(&tmr->lock, flags);
	cur_time = tmr->cur_time;
	if (tmr->running) { 
		struct timespec64 tm;

		FUNC0(&tm);
		tm = FUNC4(tm, tmr->last_update);
		cur_time.tv_nsec += tm.tv_nsec;
		cur_time.tv_sec += tm.tv_sec;
		FUNC1(&cur_time);
	}
	FUNC3(&tmr->lock, flags);
	return cur_time;	
}