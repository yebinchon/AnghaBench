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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xarray*,unsigned long,unsigned int) ; 
 int /*<<< orphan*/  xas ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC5(struct xarray *xa, unsigned long index,
		unsigned order, void *entry, gfp_t gfp)
{
	FUNC0(xas, xa, index, order);
	void *curr;

	do {
		FUNC1(&xas);
		curr = FUNC3(&xas, entry);
		FUNC4(&xas);
	} while (FUNC2(&xas, gfp));

	return curr;
}