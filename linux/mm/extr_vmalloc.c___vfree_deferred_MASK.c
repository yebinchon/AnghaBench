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
struct vfree_deferred {int /*<<< orphan*/  wq; int /*<<< orphan*/  list; } ;
struct llist_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct llist_node*,int /*<<< orphan*/ *) ; 
 struct vfree_deferred* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vfree_deferred ; 

__attribute__((used)) static inline void FUNC3(const void *addr)
{
	/*
	 * Use raw_cpu_ptr() because this can be called from preemptible
	 * context. Preemption is absolutely fine here, because the llist_add()
	 * implementation is lockless, so it works even if we are adding to
	 * nother cpu's list.  schedule_work() should be fine with this too.
	 */
	struct vfree_deferred *p = FUNC1(&vfree_deferred);

	if (FUNC0((struct llist_node *)addr, &p->list))
		FUNC2(&p->wq);
}