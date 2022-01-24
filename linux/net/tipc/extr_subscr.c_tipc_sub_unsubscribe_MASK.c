#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ timeout; } ;
struct TYPE_4__ {TYPE_1__ s; } ;
struct tipc_subscription {int /*<<< orphan*/  sub_list; int /*<<< orphan*/  timer; TYPE_2__ evt; } ;

/* Variables and functions */
 scalar_t__ TIPC_WAIT_FOREVER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct tipc_subscription*) ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_subscription*) ; 

void FUNC4(struct tipc_subscription *sub)
{
	FUNC2(sub);
	if (sub->evt.s.timeout != TIPC_WAIT_FOREVER)
		FUNC0(&sub->timer);
	FUNC1(&sub->sub_list);
	FUNC3(sub);
}