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
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  XA_FREE_MARK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct xarray*,unsigned long) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ FUNC5 (struct xarray*) ; 
 int /*<<< orphan*/  xas ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,void*) ; 

void *FUNC10(struct xarray *xa, unsigned long index,
			void *old, void *entry, gfp_t gfp)
{
	FUNC2(xas, xa, index);
	void *curr;

	if (FUNC0(FUNC4(entry)))
		return FUNC1(-EINVAL);

	do {
		curr = FUNC7(&xas);
		if (curr == old) {
			FUNC9(&xas, entry);
			if (FUNC5(xa) && entry && !curr)
				FUNC6(&xas, XA_FREE_MARK);
		}
	} while (FUNC3(&xas, gfp));

	return FUNC8(&xas, curr);
}