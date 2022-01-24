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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PG_ANY ; 
 int /*<<< orphan*/  PG_UNSAFE_CLEAR ; 
 struct memory_bitmap* forbidden_pages_map ; 
 struct memory_bitmap* free_pages_map ; 
 int /*<<< orphan*/  FUNC1 (struct memory_bitmap*) ; 
 struct memory_bitmap* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct memory_bitmap*) ; 
 int FUNC4 (struct memory_bitmap*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct memory_bitmap*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

int FUNC7(void)
{
	struct memory_bitmap *bm1, *bm2;
	int error = 0;

	if (forbidden_pages_map && free_pages_map)
		return 0;
	else
		FUNC0(forbidden_pages_map || free_pages_map);

	bm1 = FUNC2(sizeof(struct memory_bitmap), GFP_KERNEL);
	if (!bm1)
		return -ENOMEM;

	error = FUNC4(bm1, GFP_KERNEL, PG_ANY);
	if (error)
		goto Free_first_object;

	bm2 = FUNC2(sizeof(struct memory_bitmap), GFP_KERNEL);
	if (!bm2)
		goto Free_first_bitmap;

	error = FUNC4(bm2, GFP_KERNEL, PG_ANY);
	if (error)
		goto Free_second_object;

	forbidden_pages_map = bm1;
	free_pages_map = bm2;
	FUNC3(forbidden_pages_map);

	FUNC6("Basic memory bitmaps created\n");

	return 0;

 Free_second_object:
	FUNC1(bm2);
 Free_first_bitmap:
 	FUNC5(bm1, PG_UNSAFE_CLEAR);
 Free_first_object:
	FUNC1(bm1);
	return -ENOMEM;
}