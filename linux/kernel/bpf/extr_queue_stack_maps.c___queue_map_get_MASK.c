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
struct TYPE_2__ {size_t value_size; } ;
struct bpf_queue_stack {size_t tail; size_t size; int /*<<< orphan*/  lock; TYPE_1__ map; int /*<<< orphan*/ * elements; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 struct bpf_queue_stack* FUNC0 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC1 (void*,void*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC3 (struct bpf_queue_stack*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct bpf_map *map, void *value, bool delete)
{
	struct bpf_queue_stack *qs = FUNC0(map);
	unsigned long flags;
	int err = 0;
	void *ptr;

	FUNC4(&qs->lock, flags);

	if (FUNC3(qs)) {
		FUNC2(value, 0, qs->map.value_size);
		err = -ENOENT;
		goto out;
	}

	ptr = &qs->elements[qs->tail * qs->map.value_size];
	FUNC1(value, ptr, qs->map.value_size);

	if (delete) {
		if (FUNC6(++qs->tail >= qs->size))
			qs->tail = 0;
	}

out:
	FUNC5(&qs->lock, flags);
	return err;
}