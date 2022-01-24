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
struct TYPE_2__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  list; } ;
struct perf_event {TYPE_1__ addr_filters; scalar_t__ parent; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct perf_event*) ; 
 int /*<<< orphan*/  list ; 
 int /*<<< orphan*/  FUNC3 (struct list_head*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC7(struct perf_event *event,
				     struct list_head *head)
{
	unsigned long flags;
	FUNC0(list);

	if (!FUNC2(event))
		return;

	/* don't bother with children, they don't have their own filters */
	if (event->parent)
		return;

	FUNC5(&event->addr_filters.lock, flags);

	FUNC4(&event->addr_filters.list, &list);
	if (head)
		FUNC3(head, &event->addr_filters.list);

	FUNC6(&event->addr_filters.lock, flags);

	FUNC1(&list);
}