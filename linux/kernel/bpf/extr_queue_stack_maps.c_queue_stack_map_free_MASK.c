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
struct bpf_queue_stack {int dummy; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_queue_stack*) ; 
 struct bpf_queue_stack* FUNC1 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static void FUNC3(struct bpf_map *map)
{
	struct bpf_queue_stack *qs = FUNC1(map);

	/* at this point bpf_prog->aux->refcnt == 0 and this map->refcnt == 0,
	 * so the programs (can be more than one that used this map) were
	 * disconnected from events. Wait for outstanding critical sections in
	 * these programs to complete
	 */
	FUNC2();

	FUNC0(qs);
}