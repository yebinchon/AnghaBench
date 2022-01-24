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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct xarray*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  xas ; 
 void* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,void*) ; 

void *FUNC6(struct xarray *xa, unsigned long index)
{
	FUNC0(xas, xa, index);
	void *entry;

	FUNC1();
	do {
		entry = FUNC4(&xas);
		if (FUNC3(entry))
			entry = NULL;
	} while (FUNC5(&xas, entry));
	FUNC2();

	return entry;
}