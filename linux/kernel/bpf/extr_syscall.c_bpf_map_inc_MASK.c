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
struct bpf_map {int /*<<< orphan*/  usercnt; int /*<<< orphan*/  refcnt; } ;

/* Variables and functions */
 scalar_t__ BPF_MAX_REFCNT ; 
 int /*<<< orphan*/  EBUSY ; 
 struct bpf_map* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

struct bpf_map *FUNC4(struct bpf_map *map, bool uref)
{
	if (FUNC3(&map->refcnt) > BPF_MAX_REFCNT) {
		FUNC1(&map->refcnt);
		return FUNC0(-EBUSY);
	}
	if (uref)
		FUNC2(&map->usercnt);
	return map;
}