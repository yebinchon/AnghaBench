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
struct map_groups {int /*<<< orphan*/  addr_space; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  UNW_CACHE_GLOBAL ; 
 int /*<<< orphan*/  accessors ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct map_groups *mg)
{
	mg->addr_space = FUNC1(&accessors, 0);
	if (!mg->addr_space) {
		FUNC0("unwind: Can't create unwind address space.\n");
		return -ENOMEM;
	}

	FUNC2(mg->addr_space, UNW_CACHE_GLOBAL);
	return 0;
}