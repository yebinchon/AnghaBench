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
struct workqueue_struct {int flags; struct worker* rescuer; int /*<<< orphan*/  name; } ;
struct worker {int /*<<< orphan*/  task; struct workqueue_struct* rescue_wq; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  NUMA_NO_NODE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int WQ_MEM_RECLAIM ; 
 struct worker* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cpu_possible_mask ; 
 int /*<<< orphan*/  FUNC2 (struct worker*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct worker*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rescuer_thread ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct workqueue_struct *wq)
{
	struct worker *rescuer;
	int ret;

	if (!(wq->flags & WQ_MEM_RECLAIM))
		return 0;

	rescuer = FUNC1(NUMA_NO_NODE);
	if (!rescuer)
		return -ENOMEM;

	rescuer->rescue_wq = wq;
	rescuer->task = FUNC4(rescuer_thread, rescuer, "%s", wq->name);
	ret = FUNC0(rescuer->task);
	if (ret) {
		FUNC2(rescuer);
		return ret;
	}

	wq->rescuer = rescuer;
	FUNC3(rescuer->task, cpu_possible_mask);
	FUNC5(rescuer->task);

	return 0;
}