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
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * main_dict ; 
 int /*<<< orphan*/ * main_module ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void)
{
	main_module = FUNC0("__main__");
	if (main_module == NULL)
		return -1;
	FUNC2(main_module);

	main_dict = FUNC1(main_module);
	if (main_dict == NULL)
		goto error;
	FUNC2(main_dict);

	FUNC4("trace_begin", NULL);

	return 0;

error:
	FUNC3(main_dict);
	FUNC3(main_module);
	return -1;
}