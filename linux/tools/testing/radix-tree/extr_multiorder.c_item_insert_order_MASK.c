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
struct item {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xarray*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct item*) ; 
 struct item* FUNC2 (unsigned long,unsigned int) ; 
 int /*<<< orphan*/  xas ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,struct item*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct xarray *xa, unsigned long index,
			unsigned order)
{
	FUNC0(xas, xa, index, order);
	struct item *item = FUNC2(index, order);

	do {
		FUNC4(&xas);
		FUNC6(&xas, item);
		FUNC7(&xas);
	} while (FUNC5(&xas, GFP_KERNEL));

	if (!FUNC3(&xas))
		return 0;

	FUNC1(item);
	return FUNC3(&xas);
}