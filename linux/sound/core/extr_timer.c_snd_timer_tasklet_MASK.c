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
struct snd_timer {int /*<<< orphan*/  lock; int /*<<< orphan*/  sack_list_head; TYPE_1__* card; } ;
struct TYPE_2__ {scalar_t__ shutdown; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct snd_timer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_timer*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long arg)
{
	struct snd_timer *timer = (struct snd_timer *) arg;
	unsigned long flags;

	if (timer->card && timer->card->shutdown) {
		FUNC0(timer, &timer->sack_list_head);
		return;
	}

	FUNC2(&timer->lock, flags);
	FUNC1(timer, &timer->sack_list_head);
	FUNC3(&timer->lock, flags);
}