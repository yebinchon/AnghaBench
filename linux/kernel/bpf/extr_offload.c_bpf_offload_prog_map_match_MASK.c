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
struct bpf_prog {int dummy; } ;
struct bpf_offloaded_map {int /*<<< orphan*/  netdev; } ;
struct bpf_map {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct bpf_prog*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bpf_devs_lock ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_map*) ; 
 int FUNC2 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct bpf_offloaded_map* FUNC4 (struct bpf_map*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

bool FUNC6(struct bpf_prog *prog, struct bpf_map *map)
{
	struct bpf_offloaded_map *offmap;
	bool ret;

	if (!FUNC1(map))
		return FUNC2(map);
	offmap = FUNC4(map);

	FUNC3(&bpf_devs_lock);
	ret = FUNC0(prog, offmap->netdev);
	FUNC5(&bpf_devs_lock);

	return ret;
}