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
struct address_space {int dummy; } ;
typedef  int /*<<< orphan*/  pgoff_t ;

/* Variables and functions */
 int /*<<< orphan*/  AOP_FLAG_NOFS ; 
 int /*<<< orphan*/  CONFIG_F2FS_FAULT_INJECTION ; 
 int /*<<< orphan*/  FUNC0 (struct address_space*) ; 
 int /*<<< orphan*/  FAULT_PAGE_ALLOC ; 
 int FGP_ACCESSED ; 
 int FGP_LOCK ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct page* FUNC3 (struct address_space*,int /*<<< orphan*/ ,int) ; 
 struct page* FUNC4 (struct address_space*,int /*<<< orphan*/ ) ; 
 struct page* FUNC5 (struct address_space*,int /*<<< orphan*/ ) ; 
 struct page* FUNC6 (struct address_space*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct page *FUNC8(struct address_space *mapping,
						pgoff_t index, bool for_write)
{
	struct page *page;

	if (FUNC1(CONFIG_F2FS_FAULT_INJECTION)) {
		if (!for_write)
			page = FUNC3(mapping, index,
							FGP_LOCK | FGP_ACCESSED);
		else
			page = FUNC4(mapping, index);
		if (page)
			return page;

		if (FUNC7(FUNC0(mapping), FAULT_PAGE_ALLOC)) {
			FUNC2(FAULT_PAGE_ALLOC);
			return NULL;
		}
	}

	if (!for_write)
		return FUNC5(mapping, index);
	return FUNC6(mapping, index, AOP_FLAG_NOFS);
}