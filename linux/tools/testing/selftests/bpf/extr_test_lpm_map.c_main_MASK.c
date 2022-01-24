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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 

int FUNC9(void)
{
	int i;

	/* we want predictable, pseudo random tests */
	FUNC1(0xf00ba1);

	FUNC2();
	FUNC8();

	/* Test with 8, 16, 24, 32, ... 128 bit prefix length */
	for (i = 1; i <= 16; ++i)
		FUNC6(i);

	FUNC5();
	FUNC3();
	FUNC4();
	FUNC7();

	FUNC0("test_lpm: OK\n");
	return 0;
}