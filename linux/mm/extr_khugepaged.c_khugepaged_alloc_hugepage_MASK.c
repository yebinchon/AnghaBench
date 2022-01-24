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
 int /*<<< orphan*/  THP_COLLAPSE_ALLOC ; 
 int /*<<< orphan*/  THP_COLLAPSE_ALLOC_FAILED ; 
 struct page* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static struct page *FUNC6(bool *wait)
{
	struct page *hpage;

	do {
		hpage = FUNC0();
		if (!hpage) {
			FUNC1(THP_COLLAPSE_ALLOC_FAILED);
			if (!*wait)
				return NULL;

			*wait = false;
			FUNC2();
		} else
			FUNC1(THP_COLLAPSE_ALLOC);
	} while (FUNC5(!hpage) && FUNC4(FUNC3()));

	return hpage;
}