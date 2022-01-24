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
struct memory_bitmap {int dummy; } ;

/* Variables and functions */
 unsigned long BM_END_OF_MAP ; 
 scalar_t__ allocated_unsafe_pages ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct memory_bitmap*) ; 
 int /*<<< orphan*/  free_pages_map ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct memory_bitmap *bm)
{
	unsigned long pfn;

	/* Clear the "free"/"unsafe" bit for all PFNs */
	FUNC3(free_pages_map);
	pfn = FUNC2(free_pages_map);
	while (pfn != BM_END_OF_MAP) {
		FUNC1(free_pages_map);
		pfn = FUNC2(free_pages_map);
	}

	/* Mark pages that correspond to the "original" PFNs as "unsafe" */
	FUNC0(free_pages_map, bm);

	allocated_unsafe_pages = 0;
}