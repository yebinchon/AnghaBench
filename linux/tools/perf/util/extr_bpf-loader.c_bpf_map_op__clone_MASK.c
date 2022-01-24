#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int nr_ranges; struct bpf_map_op* ranges; } ;
struct TYPE_4__ {TYPE_1__ array; } ;
struct bpf_map_op {scalar_t__ key_type; TYPE_2__ k; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ BPF_MAP_KEY_RANGES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_map_op*) ; 
 void* FUNC2 (struct bpf_map_op*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static struct bpf_map_op *
FUNC4(struct bpf_map_op *op)
{
	struct bpf_map_op *newop;

	newop = FUNC2(op, sizeof(*op));
	if (!newop) {
		FUNC3("Failed to alloc bpf_map_op\n");
		return NULL;
	}

	FUNC0(&newop->list);
	if (op->key_type == BPF_MAP_KEY_RANGES) {
		size_t memsz = op->k.array.nr_ranges *
			       sizeof(op->k.array.ranges[0]);

		newop->k.array.ranges = FUNC2(op->k.array.ranges, memsz);
		if (!newop->k.array.ranges) {
			FUNC3("Failed to alloc indices for map\n");
			FUNC1(newop);
			return NULL;
		}
	}

	return newop;
}