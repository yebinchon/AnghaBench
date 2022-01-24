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
typedef  int /*<<< orphan*/  u8 ;
struct page {scalar_t__ index; } ;
typedef  unsigned int const s64 ;

/* Variables and functions */
 unsigned int const PAGE_MASK ; 
 unsigned int const PAGE_SHIFT ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (struct page*) ; 

__attribute__((used)) static void FUNC4(struct page *page,
		const s64 initialized_size)
{
	u8 *kp = FUNC3(page);
	unsigned int kp_ofs;

	FUNC2("Zeroing page region outside initialized size.");
	if (((s64)page->index << PAGE_SHIFT) >= initialized_size) {
		FUNC0(kp);
		return;
	}
	kp_ofs = initialized_size & ~PAGE_MASK;
	FUNC1(kp + kp_ofs, 0, PAGE_SIZE - kp_ofs);
	return;
}