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
struct bpf_offloaded_map {scalar_t__ netdev; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bpf_offloaded_map*) ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_offloaded_map*) ; 
 struct bpf_offloaded_map* FUNC3 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct bpf_map *map)
{
	struct bpf_offloaded_map *offmap = FUNC3(map);

	FUNC4();
	FUNC1(&bpf_devs_lock);
	if (offmap->netdev)
		FUNC0(offmap);
	FUNC6(&bpf_devs_lock);
	FUNC5();

	FUNC2(offmap);
}