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
struct item {int index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct item* DUMMY_PTR ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  idr ; 
 int FUNC2 (int /*<<< orphan*/ *,struct item*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 struct item* FUNC6 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_idr_free ; 

void FUNC7(void)
{
	unsigned long i;
	FUNC0(idr);

	FUNC1(FUNC2(&idr, DUMMY_PTR, 0, 0x4000, GFP_KERNEL) == 0);
	FUNC1(FUNC2(&idr, DUMMY_PTR, 0x3ffd, 0x4000, GFP_KERNEL) == 0x3ffd);
	FUNC5(&idr, 0x3ffd);
	FUNC5(&idr, 0);

	for (i = 0x3ffe; i < 0x4003; i++) {
		int id;
		struct item *item;

		if (i < 0x4000)
			item = FUNC6(i, 0);
		else
			item = FUNC6(i - 0x3fff, 0);

		id = FUNC2(&idr, item, 1, 0x4000, GFP_KERNEL);
		FUNC1(id == item->index);
	}

	FUNC4(&idr, item_idr_free, &idr);
	FUNC3(&idr);
}