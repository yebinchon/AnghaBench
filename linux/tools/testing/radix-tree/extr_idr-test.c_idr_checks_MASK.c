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
struct item {unsigned int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct item* DUMMY_PTR ; 
 unsigned long ENOSPC ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 unsigned long INT_MAX ; 
 unsigned long RADIX_TREE_MAP_SIZE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  idr ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned long FUNC3 (int /*<<< orphan*/ *,struct item*,int,int,int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ *,struct item*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC16 (int) ; 
 struct item* FUNC17 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_idr_free ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC19(void)
{
	unsigned long i;
	FUNC0(idr);

	for (i = 0; i < 10000; i++) {
		struct item *item = FUNC17(i, 0);
		FUNC1(FUNC3(&idr, item, 0, 20000, GFP_KERNEL) == i);
	}

	FUNC1(FUNC3(&idr, DUMMY_PTR, 5, 30, GFP_KERNEL) < 0);

	for (i = 0; i < 5000; i++)
		FUNC18(&idr, i);

	FUNC13(&idr, 3);

	FUNC8(&idr, item_idr_free, &idr);
	FUNC6(&idr);

	FUNC1(FUNC10(&idr));

	FUNC13(&idr, 3);
	FUNC13(&idr, 0);

	FUNC1(FUNC3(&idr, DUMMY_PTR, 0, 0, GFP_KERNEL) == 0);
	FUNC13(&idr, 1);
	for (i = 1; i < RADIX_TREE_MAP_SIZE; i++)
		FUNC1(FUNC3(&idr, DUMMY_PTR, 0, 0, GFP_KERNEL) == i);
	FUNC13(&idr, 1 << 30);
	FUNC6(&idr);

	for (i = INT_MAX - 3UL; i < INT_MAX + 1UL; i++) {
		struct item *item = FUNC17(i, 0);
		FUNC1(FUNC3(&idr, item, i, i + 10, GFP_KERNEL) == i);
	}
	FUNC1(FUNC3(&idr, DUMMY_PTR, i - 2, i, GFP_KERNEL) == -ENOSPC);
	FUNC1(FUNC3(&idr, DUMMY_PTR, i - 2, i + 10, GFP_KERNEL) == -ENOSPC);

	FUNC8(&idr, item_idr_free, &idr);
	FUNC6(&idr);
	FUNC6(&idr);

	FUNC1(FUNC10(&idr));

	FUNC15(&idr, INT_MAX - 3UL);
	for (i = INT_MAX - 3UL; i < INT_MAX + 3UL; i++) {
		struct item *item;
		unsigned int id;
		if (i <= INT_MAX)
			item = FUNC17(i, 0);
		else
			item = FUNC17(i - INT_MAX - 1, 0);

		id = FUNC4(&idr, item, 0, 0, GFP_KERNEL);
		FUNC1(id == item->index);
	}

	FUNC8(&idr, item_idr_free, &idr);
	FUNC6(&idr);
	FUNC1(FUNC10(&idr));

	for (i = 1; i < 10000; i++) {
		struct item *item = FUNC17(i, 0);
		FUNC1(FUNC3(&idr, item, 1, 20000, GFP_KERNEL) == i);
	}

	FUNC8(&idr, item_idr_free, &idr);
	FUNC6(&idr);

	FUNC14();
	FUNC5();
	FUNC12();
	FUNC11();
	FUNC9(0);
	FUNC9(1);
	FUNC9(4);
	FUNC16(4);
	FUNC16(1);
	FUNC16(0);
	FUNC2(&idr);
	FUNC7();
}