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
struct bpf_cpu_map_entry {struct bpf_cpu_map_entry* queue; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_cpu_map_entry*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_cpu_map_entry*) ; 
 int /*<<< orphan*/  FUNC3 (struct bpf_cpu_map_entry*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct bpf_cpu_map_entry *rcpu)
{
	if (FUNC1(&rcpu->refcnt)) {
		/* The queue should be empty at this point */
		FUNC0(rcpu->queue);
		FUNC3(rcpu->queue, NULL);
		FUNC2(rcpu->queue);
		FUNC2(rcpu);
	}
}