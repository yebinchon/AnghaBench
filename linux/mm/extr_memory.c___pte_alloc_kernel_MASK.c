#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  pte_t ;
typedef  int /*<<< orphan*/  pmd_t ;
struct TYPE_5__ {int /*<<< orphan*/  page_table_lock; } ;

/* Variables and functions */
 int ENOMEM ; 
 TYPE_1__ init_mm ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(pmd_t *pmd)
{
	pte_t *new = FUNC3(&init_mm);
	if (!new)
		return -ENOMEM;

	FUNC5(); /* See comment in __pte_alloc */

	FUNC6(&init_mm.page_table_lock);
	if (FUNC0(FUNC1(*pmd))) {	/* Has another populated it ? */
		FUNC2(&init_mm, pmd, new);
		new = NULL;
	}
	FUNC7(&init_mm.page_table_lock);
	if (new)
		FUNC4(&init_mm, new);
	return 0;
}