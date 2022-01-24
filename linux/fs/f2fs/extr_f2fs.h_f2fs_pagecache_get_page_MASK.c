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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct address_space*) ; 
 int /*<<< orphan*/  FAULT_PAGE_GET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct page* FUNC2 (struct address_space*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline struct page *FUNC4(
				struct address_space *mapping, pgoff_t index,
				int fgp_flags, gfp_t gfp_mask)
{
	if (FUNC3(FUNC0(mapping), FAULT_PAGE_GET)) {
		FUNC1(FAULT_PAGE_GET);
		return NULL;
	}

	return FUNC2(mapping, index, fgp_flags, gfp_mask);
}