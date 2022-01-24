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
 int absolute_percpu ; 
 int all_symbols ; 
 int base_relative ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  stdin ; 
 scalar_t__ FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 

int FUNC8(int argc, char **argv)
{
	if (argc >= 2) {
		int i;
		for (i = 1; i < argc; i++) {
			if(FUNC5(argv[i], "--all-symbols") == 0)
				all_symbols = 1;
			else if (FUNC5(argv[i], "--absolute-percpu") == 0)
				absolute_percpu = 1;
			else if (FUNC5(argv[i], "--base-relative") == 0)
				base_relative = 1;
			else
				FUNC6();
		}
	} else if (argc != 1)
		FUNC6();

	FUNC2(stdin);
	if (absolute_percpu)
		FUNC0();
	if (base_relative)
		FUNC3();
	FUNC4();
	FUNC1();
	FUNC7();

	return 0;
}