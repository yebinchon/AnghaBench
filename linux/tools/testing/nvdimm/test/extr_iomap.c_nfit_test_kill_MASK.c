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
struct dev_pagemap {int /*<<< orphan*/  ref; int /*<<< orphan*/  done; TYPE_1__* ops; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* cleanup ) (struct dev_pagemap*) ;int /*<<< orphan*/  (* kill ) (struct dev_pagemap*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dev_pagemap*) ; 
 int /*<<< orphan*/  FUNC4 (struct dev_pagemap*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(void *_pgmap)
{
	struct dev_pagemap *pgmap = _pgmap;

	FUNC0(!pgmap || !pgmap->ref);

	if (pgmap->ops && pgmap->ops->kill)
		pgmap->ops->kill(pgmap);
	else
		FUNC2(pgmap->ref);

	if (pgmap->ops && pgmap->ops->cleanup) {
		pgmap->ops->cleanup(pgmap);
	} else {
		FUNC5(&pgmap->done);
		FUNC1(pgmap->ref);
	}
}