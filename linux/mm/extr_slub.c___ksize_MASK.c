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
struct page {int /*<<< orphan*/  slab_cache; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 void const* ZERO_SIZE_PTR ; 
 size_t FUNC3 (struct page*) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int) ; 
 struct page* FUNC6 (void const*) ; 

size_t FUNC7(const void *object)
{
	struct page *page;

	if (FUNC5(object == ZERO_SIZE_PTR))
		return 0;

	page = FUNC6(object);

	if (FUNC5(!FUNC1(page))) {
		FUNC2(!FUNC0(page));
		return FUNC3(page);
	}

	return FUNC4(page->slab_cache);
}