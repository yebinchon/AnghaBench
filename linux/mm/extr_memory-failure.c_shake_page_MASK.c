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
struct page {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct page*) ; 
 scalar_t__ FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct page*) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 

void FUNC9(struct page *p, int access)
{
	if (FUNC0(p))
		return;

	if (!FUNC2(p)) {
		FUNC6();
		if (FUNC1(p))
			return;
		FUNC3(FUNC8(p));
		if (FUNC1(p) || FUNC5(p))
			return;
	}

	/*
	 * Only call shrink_node_slabs here (which would also shrink
	 * other caches) if access is not potentially fatal.
	 */
	if (access)
		FUNC4(FUNC7(p));
}