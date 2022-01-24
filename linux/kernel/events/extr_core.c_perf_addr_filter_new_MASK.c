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
struct perf_event {int cpu; } ;
struct perf_addr_filter {int /*<<< orphan*/  entry; } ;
struct list_head {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int) ; 
 struct perf_addr_filter* FUNC2 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct list_head*) ; 

__attribute__((used)) static struct perf_addr_filter *
FUNC4(struct perf_event *event, struct list_head *filters)
{
	int node = FUNC1(event->cpu == -1 ? 0 : event->cpu);
	struct perf_addr_filter *filter;

	filter = FUNC2(sizeof(*filter), GFP_KERNEL, node);
	if (!filter)
		return NULL;

	FUNC0(&filter->entry);
	FUNC3(&filter->entry, filters);

	return filter;
}