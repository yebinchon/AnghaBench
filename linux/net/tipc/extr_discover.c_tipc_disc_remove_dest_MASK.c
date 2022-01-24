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
struct tipc_discoverer {int num_nodes; int timer_intv; int /*<<< orphan*/  lock; int /*<<< orphan*/  timer; } ;

/* Variables and functions */
 int TIPC_DISC_FAST ; 
 int TIPC_DISC_INACTIVE ; 
 int TIPC_DISC_INIT ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void FUNC3(struct tipc_discoverer *d)
{
	int intv, num;

	FUNC1(&d->lock);
	d->num_nodes--;
	num = d->num_nodes;
	intv = d->timer_intv;
	if (!num && (intv == TIPC_DISC_INACTIVE || intv > TIPC_DISC_FAST))  {
		d->timer_intv = TIPC_DISC_INIT;
		FUNC0(&d->timer, jiffies + d->timer_intv);
	}
	FUNC2(&d->lock);
}