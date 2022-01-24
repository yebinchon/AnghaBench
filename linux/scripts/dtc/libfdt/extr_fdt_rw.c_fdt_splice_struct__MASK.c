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
 scalar_t__ FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (void*,scalar_t__) ; 
 scalar_t__ FUNC3 (void*) ; 
 int FUNC4 (void*,void*,int,int) ; 

__attribute__((used)) static int FUNC5(void *fdt, void *p,
			      int oldlen, int newlen)
{
	int delta = newlen - oldlen;
	int err;

	if ((err = FUNC4(fdt, p, oldlen, newlen)))
		return err;

	FUNC2(fdt, FUNC3(fdt) + delta);
	FUNC1(fdt, FUNC0(fdt) + delta);
	return 0;
}