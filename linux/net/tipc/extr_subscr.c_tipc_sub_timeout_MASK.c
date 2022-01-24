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
struct TYPE_4__ {int /*<<< orphan*/  upper; int /*<<< orphan*/  lower; } ;
struct tipc_subscr {TYPE_2__ seq; } ;
struct TYPE_3__ {struct tipc_subscr s; } ;
struct tipc_subscription {int inactive; int /*<<< orphan*/  lock; TYPE_1__ evt; } ;
struct timer_list {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TIPC_SUBSCR_TIMEOUT ; 
 struct tipc_subscription* FUNC0 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct tipc_subscription* sub ; 
 int /*<<< orphan*/  timer ; 
 int /*<<< orphan*/  FUNC3 (struct tipc_subscription*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct timer_list *t)
{
	struct tipc_subscription *sub = FUNC0(sub, t, timer);
	struct tipc_subscr *s = &sub->evt.s;

	FUNC1(&sub->lock);
	FUNC3(sub, s->seq.lower, s->seq.upper,
			    TIPC_SUBSCR_TIMEOUT, 0, 0);
	sub->inactive = true;
	FUNC2(&sub->lock);
}