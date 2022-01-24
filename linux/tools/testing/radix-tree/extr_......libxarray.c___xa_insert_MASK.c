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
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBUSY ; 
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_FREE_MARK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct xarray*,unsigned long) ; 
 void* XA_ZERO_ENTRY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 scalar_t__ FUNC4 (struct xarray*) ; 
 int /*<<< orphan*/  xas ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*) ; 

int FUNC10(struct xarray *xa, unsigned long index, void *entry, gfp_t gfp)
{
	FUNC1(xas, xa, index);
	void *curr;

	if (FUNC0(FUNC3(entry)))
		return -EINVAL;
	if (!entry)
		entry = XA_ZERO_ENTRY;

	do {
		curr = FUNC7(&xas);
		if (!curr) {
			FUNC9(&xas, entry);
			if (FUNC4(xa))
				FUNC5(&xas, XA_FREE_MARK);
		} else {
			FUNC8(&xas, -EBUSY);
		}
	} while (FUNC2(&xas, gfp));

	return FUNC6(&xas);
}