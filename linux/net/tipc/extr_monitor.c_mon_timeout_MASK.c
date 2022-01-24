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
struct tipc_peer {int applied; } ;
struct tipc_monitor {scalar_t__ timer_intv; int /*<<< orphan*/  timer; int /*<<< orphan*/  lock; struct tipc_peer* self; int /*<<< orphan*/  peer_cnt; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 struct tipc_monitor* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct tipc_monitor* mon ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_monitor*,struct tipc_peer*) ; 
 int /*<<< orphan*/  FUNC4 (struct tipc_monitor*) ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(struct timer_list *t)
{
	struct tipc_monitor *mon = FUNC1(mon, t, timer);
	struct tipc_peer *self;
	int best_member_cnt = FUNC0(mon->peer_cnt) - 1;

	FUNC5(&mon->lock);
	self = mon->self;
	if (self && (best_member_cnt != self->applied)) {
		FUNC4(mon);
		FUNC3(mon, self);
	}
	FUNC6(&mon->lock);
	FUNC2(&mon->timer, jiffies + mon->timer_intv);
}