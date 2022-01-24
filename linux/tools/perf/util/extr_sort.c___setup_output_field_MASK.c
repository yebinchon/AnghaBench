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
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/ * field_order ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  perf_hpp_list ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static int FUNC6(void)
{
	char *str, *strp;
	int ret = -EINVAL;

	if (field_order == NULL)
		return 0;

	strp = str = FUNC4(field_order);
	if (str == NULL) {
		FUNC2("Not enough memory to setup output fields");
		return -ENOMEM;
	}

	if (!FUNC1(field_order))
		strp++;

	if (!FUNC5(strp)) {
		FUNC2("Invalid --fields key: `+'");
		goto out;
	}

	ret = FUNC3(&perf_hpp_list, strp);

out:
	FUNC0(str);
	return ret;
}