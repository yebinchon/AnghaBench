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
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (void*,int) ; 
 int FUNC2 (void*) ; 
 int FUNC3 (void*,void*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(void *fdt, int newlen)
{
	void *p = (char *)fdt
		+ FUNC0(fdt) + FUNC2(fdt);
	int err;

	if ((err = FUNC3(fdt, p, 0, newlen)))
		return err;

	FUNC1(fdt, FUNC2(fdt) + newlen);
	return 0;
}