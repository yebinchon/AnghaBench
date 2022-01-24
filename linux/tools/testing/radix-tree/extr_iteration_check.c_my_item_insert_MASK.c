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
struct xarray {int dummy; } ;
struct item {int order; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xarray*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct item*) ; 
 struct item* FUNC2 (unsigned long,int /*<<< orphan*/ ) ; 
 int max_order ; 
 int /*<<< orphan*/  xas ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,struct item*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

void FUNC10(struct xarray *xa, unsigned long index)
{
	FUNC0(xas, xa, index);
	struct item *item = FUNC2(index, 0);
	int order;

retry:
	FUNC4(&xas);
	for (order = max_order; order >= 0; order--) {
		FUNC7(&xas, index, order);
		item->order = order;
		if (FUNC3(&xas))
			continue;
		FUNC8(&xas, item);
		FUNC6(&xas, TAG);
		break;
	}
	FUNC9(&xas);
	if (FUNC5(&xas, GFP_KERNEL))
		goto retry;
	if (order < 0)
		FUNC1(item);
}