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
struct TYPE_2__ {int /*<<< orphan*/  array; } ;
struct bpf_map_op {scalar_t__ key_type; TYPE_1__ k; int /*<<< orphan*/  list; } ;

/* Variables and functions */
 scalar_t__ BPF_MAP_KEY_RANGES ; 
 int /*<<< orphan*/  FUNC0 (struct bpf_map_op*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4(struct bpf_map_op *op)
{
	if (!FUNC2(&op->list))
		FUNC1(&op->list);
	if (op->key_type == BPF_MAP_KEY_RANGES)
		FUNC3(&op->k.array);
	FUNC0(op);
}