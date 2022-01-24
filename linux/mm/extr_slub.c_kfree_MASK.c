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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  NR_SLAB_UNRECLAIMABLE ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 
 int FUNC3 (void const*) ; 
 int /*<<< orphan*/  _RET_IP_ ; 
 int /*<<< orphan*/  FUNC4 (struct page*,unsigned int) ; 
 unsigned int FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,struct page*,void*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,void const*) ; 
 scalar_t__ FUNC11 (int) ; 
 struct page* FUNC12 (void const*) ; 

void FUNC13(const void *x)
{
	struct page *page;
	void *object = (void *)x;

	FUNC10(_RET_IP_, x);

	if (FUNC11(FUNC3(x)))
		return;

	page = FUNC12(x);
	if (FUNC11(!FUNC2(page))) {
		unsigned int order = FUNC5(page);

		FUNC0(!FUNC1(page));
		FUNC6(object);
		FUNC7(FUNC8(page), NR_SLAB_UNRECLAIMABLE,
				    -(1 << order));
		FUNC4(page, order);
		return;
	}
	FUNC9(page->slab_cache, page, object, NULL, 1, _RET_IP_);
}