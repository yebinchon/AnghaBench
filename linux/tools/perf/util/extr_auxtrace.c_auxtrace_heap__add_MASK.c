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
typedef  int /*<<< orphan*/  u64 ;
struct auxtrace_heap_item {int dummy; } ;
struct auxtrace_heap {unsigned int heap_sz; int /*<<< orphan*/  heap_cnt; struct auxtrace_heap_item* heap_array; } ;

/* Variables and functions */
 unsigned int AUXTRACE_INIT_NR_QUEUES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct auxtrace_heap_item*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 struct auxtrace_heap_item* FUNC1 (struct auxtrace_heap_item*,unsigned int) ; 

int FUNC2(struct auxtrace_heap *heap, unsigned int queue_nr,
		       u64 ordinal)
{
	struct auxtrace_heap_item *heap_array;

	if (queue_nr >= heap->heap_sz) {
		unsigned int heap_sz = AUXTRACE_INIT_NR_QUEUES;

		while (heap_sz <= queue_nr)
			heap_sz <<= 1;
		heap_array = FUNC1(heap->heap_array,
				     heap_sz * sizeof(struct auxtrace_heap_item));
		if (!heap_array)
			return -ENOMEM;
		heap->heap_array = heap_array;
		heap->heap_sz = heap_sz;
	}

	FUNC0(heap->heap_array, heap->heap_cnt++, queue_nr, ordinal);

	return 0;
}