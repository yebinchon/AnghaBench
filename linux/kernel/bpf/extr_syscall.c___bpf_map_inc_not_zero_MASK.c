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
 int BPF_MAX_REFCNT ; 
 int /*<<< orphan*/  EBUSY ; 
 int /*<<< orphan*/  ENOENT ; 
 struct bpf_map* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct bpf_map*,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct bpf_map *FUNC4(struct bpf_map *map,
					      bool uref)
{
	int refold;

	refold = FUNC2(&map->refcnt, 1, 0);

	if (refold >= BPF_MAX_REFCNT) {
		FUNC1(map, false);
		return FUNC0(-EBUSY);
	}

	if (!refold)
		return FUNC0(-ENOENT);

	if (uref)
		FUNC3(&map->usercnt);

	return map;
}