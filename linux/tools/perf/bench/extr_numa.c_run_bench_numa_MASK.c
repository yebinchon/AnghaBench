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
 scalar_t__ FUNC0 (char const*) ; 
 int /*<<< orphan*/  bench_numa_usage ; 
 int FUNC1 (char const**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int,char const**) ; 
 int /*<<< orphan*/  options ; 
 int /*<<< orphan*/  p0 ; 
 int FUNC3 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(const char *name, const char **argv)
{
	int argc = FUNC1(argv);

	FUNC2(&p0, name, argc, argv);
	argc = FUNC3(argc, argv, options, bench_numa_usage, 0);
	if (argc)
		goto err;

	if (FUNC0(name))
		goto err;

	return 0;

err:
	return -1;
}