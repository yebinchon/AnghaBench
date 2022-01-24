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
 int /*<<< orphan*/  PG_UNSAFE_CLEAR ; 
 scalar_t__ FUNC0 (int) ; 
 struct memory_bitmap* forbidden_pages_map ; 
 struct memory_bitmap* free_pages_map ; 
 int /*<<< orphan*/  FUNC1 (struct memory_bitmap*) ; 
 int /*<<< orphan*/  FUNC2 (struct memory_bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4(void)
{
	struct memory_bitmap *bm1, *bm2;

	if (FUNC0(!(forbidden_pages_map && free_pages_map)))
		return;

	bm1 = forbidden_pages_map;
	bm2 = free_pages_map;
	forbidden_pages_map = NULL;
	free_pages_map = NULL;
	FUNC2(bm1, PG_UNSAFE_CLEAR);
	FUNC1(bm1);
	FUNC2(bm2, PG_UNSAFE_CLEAR);
	FUNC1(bm2);

	FUNC3("Basic memory bitmaps freed\n");
}