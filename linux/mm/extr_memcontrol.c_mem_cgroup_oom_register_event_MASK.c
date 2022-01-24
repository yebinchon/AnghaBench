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
struct mem_cgroup_eventfd_list {int /*<<< orphan*/  list; struct eventfd_ctx* eventfd; } ;
struct mem_cgroup {scalar_t__ under_oom; int /*<<< orphan*/  oom_notify; } ;
struct eventfd_ctx {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct eventfd_ctx*,int) ; 
 struct mem_cgroup_eventfd_list* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  memcg_oom_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct mem_cgroup *memcg,
	struct eventfd_ctx *eventfd, const char *args)
{
	struct mem_cgroup_eventfd_list *event;

	event = FUNC1(sizeof(*event),	GFP_KERNEL);
	if (!event)
		return -ENOMEM;

	FUNC3(&memcg_oom_lock);

	event->eventfd = eventfd;
	FUNC2(&event->list, &memcg->oom_notify);

	/* already in OOM ? */
	if (memcg->under_oom)
		FUNC0(eventfd, 1);
	FUNC4(&memcg_oom_lock);

	return 0;
}