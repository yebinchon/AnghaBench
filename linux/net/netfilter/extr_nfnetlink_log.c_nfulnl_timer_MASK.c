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
struct timer_list {int dummy; } ;
struct nfulnl_instance {int /*<<< orphan*/  lock; scalar_t__ skb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct nfulnl_instance*) ; 
 struct nfulnl_instance* FUNC1 (int /*<<< orphan*/ ,struct timer_list*,int /*<<< orphan*/ ) ; 
 struct nfulnl_instance* inst ; 
 int /*<<< orphan*/  FUNC2 (struct nfulnl_instance*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer ; 

__attribute__((used)) static void
FUNC5(struct timer_list *t)
{
	struct nfulnl_instance *inst = FUNC1(inst, t, timer);

	FUNC3(&inst->lock);
	if (inst->skb)
		FUNC0(inst);
	FUNC4(&inst->lock);
	FUNC2(inst);
}