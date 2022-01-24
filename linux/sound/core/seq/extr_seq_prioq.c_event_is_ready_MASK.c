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
struct TYPE_2__ {int /*<<< orphan*/  time; int /*<<< orphan*/  tick; } ;
struct snd_seq_event {int flags; TYPE_1__ time; } ;

/* Variables and functions */
 int SNDRV_SEQ_TIME_STAMP_MASK ; 
 int SNDRV_SEQ_TIME_STAMP_TICK ; 
 int FUNC0 (void*,int /*<<< orphan*/ *) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct snd_seq_event *ev, void *current_time)
{
	if ((ev->flags & SNDRV_SEQ_TIME_STAMP_MASK) == SNDRV_SEQ_TIME_STAMP_TICK)
		return FUNC1(current_time, &ev->time.tick);
	else
		return FUNC0(current_time, &ev->time.time);
}