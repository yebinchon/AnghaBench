#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u64 ;
struct intel_bts_queue {int on_heap; } ;
struct TYPE_7__ {TYPE_1__* heap_array; int /*<<< orphan*/  heap_cnt; } ;
struct TYPE_6__ {struct auxtrace_queue* queue_array; } ;
struct intel_bts {TYPE_3__ heap; TYPE_2__ queues; } ;
struct auxtrace_queue {struct intel_bts_queue* priv; } ;
struct TYPE_5__ {scalar_t__ ordinal; unsigned int queue_nr; } ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int FUNC2 (struct intel_bts_queue*,scalar_t__*) ; 

__attribute__((used)) static int FUNC3(struct intel_bts *bts, u64 timestamp)
{
	while (1) {
		unsigned int queue_nr;
		struct auxtrace_queue *queue;
		struct intel_bts_queue *btsq;
		u64 ts = 0;
		int ret;

		if (!bts->heap.heap_cnt)
			return 0;

		if (bts->heap.heap_array[0].ordinal > timestamp)
			return 0;

		queue_nr = bts->heap.heap_array[0].queue_nr;
		queue = &bts->queues.queue_array[queue_nr];
		btsq = queue->priv;

		FUNC1(&bts->heap);

		ret = FUNC2(btsq, &ts);
		if (ret < 0) {
			FUNC0(&bts->heap, queue_nr, ts);
			return ret;
		}

		if (!ret) {
			ret = FUNC0(&bts->heap, queue_nr, ts);
			if (ret < 0)
				return ret;
		} else {
			btsq->on_heap = false;
		}
	}

	return 0;
}