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
 int FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  check_options ; 
 int /*<<< orphan*/  check_usage ; 
 int FUNC1 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC3(int argc, const char **argv)
{
	const char *objname;

	argc = FUNC1(argc, argv, check_options, check_usage, 0);

	if (argc != 1)
		FUNC2(check_usage, check_options);

	objname = argv[0];

	return FUNC0(objname, false);
}