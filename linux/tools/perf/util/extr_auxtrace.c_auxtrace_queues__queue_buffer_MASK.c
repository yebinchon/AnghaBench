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
struct auxtrace_queues {unsigned int nr_queues; int new_data; int populated; int /*<<< orphan*/  next_buffer_nr; struct auxtrace_queue* queue_array; } ;
struct auxtrace_queue {int set; scalar_t__ tid; scalar_t__ cpu; int /*<<< orphan*/  head; } ;
struct auxtrace_buffer {scalar_t__ tid; scalar_t__ cpu; int /*<<< orphan*/  list; scalar_t__ buffer_nr; } ;

/* Variables and functions */
 int EINVAL ; 
 int FUNC0 (struct auxtrace_queues*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC3(struct auxtrace_queues *queues,
					 unsigned int idx,
					 struct auxtrace_buffer *buffer)
{
	struct auxtrace_queue *queue;
	int err;

	if (idx >= queues->nr_queues) {
		err = FUNC0(queues, idx + 1);
		if (err)
			return err;
	}

	queue = &queues->queue_array[idx];

	if (!queue->set) {
		queue->set = true;
		queue->tid = buffer->tid;
		queue->cpu = buffer->cpu;
	} else if (buffer->cpu != queue->cpu || buffer->tid != queue->tid) {
		FUNC2("auxtrace queue conflict: cpu %d, tid %d vs cpu %d, tid %d\n",
		       queue->cpu, queue->tid, buffer->cpu, buffer->tid);
		return -EINVAL;
	}

	buffer->buffer_nr = queues->next_buffer_nr++;

	FUNC1(&buffer->list, &queue->head);

	queues->new_data = true;
	queues->populated = true;

	return 0;
}