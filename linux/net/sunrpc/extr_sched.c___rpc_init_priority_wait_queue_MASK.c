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
struct TYPE_2__ {int /*<<< orphan*/  list; int /*<<< orphan*/  dwork; scalar_t__ expires; } ;
struct rpc_wait_queue {unsigned char maxpriority; TYPE_1__ timer_list; scalar_t__ qlen; int /*<<< orphan*/ * tasks; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  __rpc_queue_timer_fn ; 
 int /*<<< orphan*/  FUNC3 (struct rpc_wait_queue*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct rpc_wait_queue*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct rpc_wait_queue *queue, const char *qname, unsigned char nr_queues)
{
	int i;

	FUNC5(&queue->lock);
	for (i = 0; i < FUNC0(queue->tasks); i++)
		FUNC2(&queue->tasks[i]);
	queue->maxpriority = nr_queues - 1;
	FUNC4(queue);
	queue->qlen = 0;
	queue->timer_list.expires = 0;
	FUNC1(&queue->timer_list.dwork, __rpc_queue_timer_fn);
	FUNC2(&queue->timer_list.list);
	FUNC3(queue, qname);
}