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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int FUNC1 (void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*,int /*<<< orphan*/ ) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int FUNC4 (void*,void*) ; 
 int FUNC5 (void*,void*) ; 
 int FUNC6 (void*,void*) ; 
 int FUNC7 (void*,int /*<<< orphan*/ ) ; 

int FUNC8(void *fdt, void *fdto)
{
	uint32_t delta;
	int ret;

	FUNC0(fdt);
	FUNC0(fdto);

	ret = FUNC1(fdt, &delta);
	if (ret)
		goto err;

	ret = FUNC3(fdto, delta);
	if (ret)
		goto err;

	ret = FUNC7(fdto, delta);
	if (ret)
		goto err;

	ret = FUNC4(fdt, fdto);
	if (ret)
		goto err;

	ret = FUNC5(fdt, fdto);
	if (ret)
		goto err;

	ret = FUNC6(fdt, fdto);
	if (ret)
		goto err;

	/*
	 * The overlay has been damaged, erase its magic.
	 */
	FUNC2(fdto, ~0);

	return 0;

err:
	/*
	 * The overlay might have been damaged, erase its magic.
	 */
	FUNC2(fdto, ~0);

	/*
	 * The base device tree might have been damaged, erase its
	 * magic.
	 */
	FUNC2(fdt, ~0);

	return ret;
}