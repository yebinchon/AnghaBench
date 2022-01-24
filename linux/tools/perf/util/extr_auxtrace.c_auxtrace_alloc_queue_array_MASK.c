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
struct auxtrace_queue {int /*<<< orphan*/ * priv; int /*<<< orphan*/  head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int UINT_MAX ; 
 struct auxtrace_queue* FUNC1 (unsigned int,int) ; 

__attribute__((used)) static struct auxtrace_queue *FUNC2(unsigned int nr_queues)
{
	struct auxtrace_queue *queue_array;
	unsigned int max_nr_queues, i;

	max_nr_queues = UINT_MAX / sizeof(struct auxtrace_queue);
	if (nr_queues > max_nr_queues)
		return NULL;

	queue_array = FUNC1(nr_queues, sizeof(struct auxtrace_queue));
	if (!queue_array)
		return NULL;

	for (i = 0; i < nr_queues; i++) {
		FUNC0(&queue_array[i].head);
		queue_array[i].priv = NULL;
	}

	return queue_array;
}