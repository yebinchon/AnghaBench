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
union bpf_attr {int value_size; scalar_t__ max_entries; } ;
typedef  int u64 ;
struct bpf_map {int /*<<< orphan*/  memory; } ;
struct bpf_queue_stack {int size; struct bpf_map map; int /*<<< orphan*/  lock; } ;
struct bpf_map_memory {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct bpf_map* FUNC0 (int) ; 
 struct bpf_queue_stack* FUNC1 (int,int) ; 
 int FUNC2 (union bpf_attr*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_map_memory*) ; 
 int FUNC4 (struct bpf_map_memory*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,struct bpf_map_memory*) ; 
 int /*<<< orphan*/  FUNC6 (struct bpf_map*,union bpf_attr*) ; 
 int /*<<< orphan*/  FUNC7 (struct bpf_queue_stack*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bpf_map *FUNC9(union bpf_attr *attr)
{
	int ret, numa_node = FUNC2(attr);
	struct bpf_map_memory mem = {0};
	struct bpf_queue_stack *qs;
	u64 size, queue_size, cost;

	size = (u64) attr->max_entries + 1;
	cost = queue_size = sizeof(*qs) + size * attr->value_size;

	ret = FUNC4(&mem, cost);
	if (ret < 0)
		return FUNC0(ret);

	qs = FUNC1(queue_size, numa_node);
	if (!qs) {
		FUNC3(&mem);
		return FUNC0(-ENOMEM);
	}

	FUNC7(qs, 0, sizeof(*qs));

	FUNC6(&qs->map, attr);

	FUNC5(&qs->map.memory, &mem);
	qs->size = size;

	FUNC8(&qs->lock);

	return &qs->map;
}