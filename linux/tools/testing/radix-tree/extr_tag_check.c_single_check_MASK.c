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
 int BATCH ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_MARK_0 ; 
 int /*<<< orphan*/  XA_MARK_1 ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,void**,int,int,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,unsigned long,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tree ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC9(void)
{
	struct item *items[BATCH];
	FUNC0(tree, GFP_KERNEL);
	int ret;
	unsigned long first = 0;

	FUNC2(&tree, 0);
	FUNC5(&tree, 0, 0);
	ret = FUNC6(&tree, (void **)items, 0, BATCH, 0);
	FUNC1(ret == 1);
	ret = FUNC6(&tree, (void **)items, 1, BATCH, 0);
	FUNC1(ret == 0);
	FUNC8(&tree, 0);
	FUNC8(&tree, 1);
	ret = FUNC7(&tree, first, 10, 10, XA_MARK_0, XA_MARK_1);
	FUNC1(ret == 1);
	ret = FUNC6(&tree, (void **)items, 0, BATCH, 1);
	FUNC1(ret == 1);
	FUNC4(&tree, 0, 0);
	ret = FUNC6(&tree, (void **)items, 0, BATCH, 0);
	FUNC1(ret == 0);
	FUNC3(&tree);
}