#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ start; scalar_t__ end; } ;
struct dev_pagemap {int /*<<< orphan*/  ref; TYPE_1__ res; } ;
typedef  scalar_t__ resource_size_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pgmap_array ; 
 int /*<<< orphan*/  FUNC3 (struct dev_pagemap*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 struct dev_pagemap* FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

struct dev_pagemap *FUNC7(unsigned long pfn,
		struct dev_pagemap *pgmap)
{
	resource_size_t phys = FUNC0(pfn);

	/*
	 * In the cached case we're already holding a live reference.
	 */
	if (pgmap) {
		if (phys >= pgmap->res.start && phys <= pgmap->res.end)
			return pgmap;
		FUNC3(pgmap);
	}

	/* fall back to slow path lookup */
	FUNC4();
	pgmap = FUNC6(&pgmap_array, FUNC1(phys));
	if (pgmap && !FUNC2(pgmap->ref))
		pgmap = NULL;
	FUNC5();

	return pgmap;
}