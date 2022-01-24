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

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int ITEMS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_MARK_0 ; 
 int /*<<< orphan*/  XA_MARK_1 ; 
 int /*<<< orphan*/  XA_MARK_2 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long,int /*<<< orphan*/ ) ; 
 unsigned long FUNC7 () ; 
 unsigned long FUNC8 (int /*<<< orphan*/ *,unsigned long,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int) ; 

void FUNC10(void)
{
	FUNC0(tree, GFP_KERNEL);
	unsigned long idx[ITEMS];
	unsigned long start, end, count = 0, tagged, cur, tmp;
	int i;

//	printf("generating radix tree indices...\n");
	start = FUNC7();
	end = FUNC7();
	if (start > end && (FUNC7() % 10)) {
		cur = start;
		start = end;
		end = cur;
	}
	/* Specifically create items around the start and the end of the range
	 * with high probability to check for off by one errors */
	cur = FUNC7();
	if (cur & 1) {
		FUNC3(&tree, start);
		if (cur & 2) {
			if (start <= end)
				count++;
			FUNC6(&tree, start, 0);
		}
	}
	if (cur & 4) {
		FUNC3(&tree, start-1);
		if (cur & 8)
			FUNC6(&tree, start-1, 0);
	}
	if (cur & 16) {
		FUNC3(&tree, end);
		if (cur & 32) {
			if (start <= end)
				count++;
			FUNC6(&tree, end, 0);
		}
	}
	if (cur & 64) {
		FUNC3(&tree, end+1);
		if (cur & 128)
			FUNC6(&tree, end+1, 0);
	}

	for (i = 0; i < ITEMS; i++) {
		do {
			idx[i] = FUNC7();
		} while (FUNC5(&tree, idx[i]));

		FUNC3(&tree, idx[i]);
		if (FUNC7() & 1) {
			FUNC6(&tree, idx[i], 0);
			if (idx[i] >= start && idx[i] <= end)
				count++;
		}
/*		if (i % 1000 == 0)
			putchar('.'); */
	}

//	printf("\ncopying tags...\n");
	tagged = FUNC8(&tree, start, end, ITEMS, XA_MARK_0, XA_MARK_1);

//	printf("checking copied tags\n");
	FUNC1(tagged == count);
	FUNC2(&tree, start, end, idx, ITEMS, 0, 1);

	/* Copy tags in several rounds */
//	printf("\ncopying tags...\n");
	tmp = FUNC7() % (count / 10 + 2);
	tagged = FUNC8(&tree, start, end, tmp, XA_MARK_0, XA_MARK_2);
	FUNC1(tagged == count);

//	printf("%lu %lu %lu\n", tagged, tmp, count);
//	printf("checking copied tags\n");
	FUNC2(&tree, start, end, idx, ITEMS, 0, 2);
	FUNC9(&tree, 0);
	FUNC9(&tree, 1);
	FUNC9(&tree, 2);
//	printf("\n");
	FUNC4(&tree);
}