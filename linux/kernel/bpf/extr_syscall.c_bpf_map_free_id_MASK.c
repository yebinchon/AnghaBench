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
struct bpf_map {scalar_t__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  map_idr ; 
 int /*<<< orphan*/  map_idr_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC5(struct bpf_map *map, bool do_idr_lock)
{
	unsigned long flags;

	/* Offloaded maps are removed from the IDR store when their device
	 * disappears - even if someone holds an fd to them they are unusable,
	 * the memory is gone, all ops will fail; they are simply waiting for
	 * refcnt to drop to be freed.
	 */
	if (!map->id)
		return;

	if (do_idr_lock)
		FUNC3(&map_idr_lock, flags);
	else
		FUNC0(&map_idr_lock);

	FUNC2(&map_idr, map->id);
	map->id = 0;

	if (do_idr_lock)
		FUNC4(&map_idr_lock, flags);
	else
		FUNC1(&map_idr_lock);
}