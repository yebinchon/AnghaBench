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
struct bpf_map {int id; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,struct bpf_map*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  map_idr ; 
 int /*<<< orphan*/  map_idr_lock ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct bpf_map *map)
{
	int id;

	FUNC2(GFP_KERNEL);
	FUNC4(&map_idr_lock);
	id = FUNC1(&map_idr, map, 1, INT_MAX, GFP_ATOMIC);
	if (id > 0)
		map->id = id;
	FUNC5(&map_idr_lock);
	FUNC3();

	if (FUNC0(!id))
		return -ENOSPC;

	return id > 0 ? 0 : id;
}