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
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char**) ; 
 char** FUNC1 (int /*<<< orphan*/ ,char const*,int*) ; 

int FUNC2(const char *buf, int (*createfn)(int, char **))
{
	char **argv;
	int argc, ret;

	argc = 0;
	ret = 0;
	argv = FUNC1(GFP_KERNEL, buf, &argc);
	if (!argv)
		return -ENOMEM;

	if (argc)
		ret = createfn(argc, argv);

	FUNC0(argv);

	return ret;
}