#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ run_all; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  bench_numa_usage ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int,char const**) ; 
 int /*<<< orphan*/  numa_usage ; 
 int /*<<< orphan*/  options ; 
 TYPE_1__ p0 ; 
 int FUNC3 (int,char const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(int argc, const char **argv)
{
	FUNC2(&p0, "main,", argc, argv);
	argc = FUNC3(argc, argv, options, bench_numa_usage, 0);
	if (argc)
		goto err;

	if (p0.run_all)
		return FUNC1();

	if (FUNC0(NULL))
		goto err;

	return 0;

err:
	FUNC4(numa_usage, options);
	return -1;
}