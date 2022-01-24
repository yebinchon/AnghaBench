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
struct bpf_map {int /*<<< orphan*/  work; int /*<<< orphan*/  btf; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  bpf_map_free_deferred ; 
 int /*<<< orphan*/  FUNC2 (struct bpf_map*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct bpf_map *map, bool do_idr_lock)
{
	if (FUNC1(&map->refcnt)) {
		/* bpf_map_free_id() must be called first */
		FUNC2(map, do_idr_lock);
		FUNC3(map->btf);
		FUNC0(&map->work, bpf_map_free_deferred);
		FUNC4(&map->work);
	}
}