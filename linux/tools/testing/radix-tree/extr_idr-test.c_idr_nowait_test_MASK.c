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
struct item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  idr ; 
 unsigned int FUNC2 (int /*<<< orphan*/ *,struct item*,unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 struct item* FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  item_idr_free ; 

void FUNC8(void)
{
	unsigned int i;
	FUNC0(idr);

	FUNC5(GFP_KERNEL);

	for (i = 0; i < 3; i++) {
		struct item *item = FUNC7(i, 0);
		FUNC1(FUNC2(&idr, item, i, i + 1, GFP_NOWAIT) == i);
	}

	FUNC6();

	FUNC4(&idr, item_idr_free, &idr);
	FUNC3(&idr);
}