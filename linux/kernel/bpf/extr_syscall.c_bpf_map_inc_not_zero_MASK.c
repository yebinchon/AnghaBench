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
struct bpf_map {int dummy; } ;

/* Variables and functions */
 struct bpf_map* FUNC0 (struct bpf_map*,int) ; 
 int /*<<< orphan*/  map_idr_lock ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

struct bpf_map *FUNC3(struct bpf_map *map, bool uref)
{
	FUNC1(&map_idr_lock);
	map = FUNC0(map, uref);
	FUNC2(&map_idr_lock);

	return map;
}