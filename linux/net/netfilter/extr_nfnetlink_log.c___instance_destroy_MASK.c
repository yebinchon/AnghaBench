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
struct nfulnl_instance {int /*<<< orphan*/  lock; scalar_t__ skb; int /*<<< orphan*/  copy_mode; int /*<<< orphan*/  hlist; } ;

/* Variables and functions */
 int /*<<< orphan*/  NFULNL_COPY_DISABLED ; 
 int /*<<< orphan*/  FUNC0 (struct nfulnl_instance*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct nfulnl_instance*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC5(struct nfulnl_instance *inst)
{
	/* first pull it out of the global list */
	FUNC1(&inst->hlist);

	/* then flush all pending packets from skb */

	FUNC3(&inst->lock);

	/* lockless readers wont be able to use us */
	inst->copy_mode = NFULNL_COPY_DISABLED;

	if (inst->skb)
		FUNC0(inst);
	FUNC4(&inst->lock);

	/* and finally put the refcount */
	FUNC2(inst);
}