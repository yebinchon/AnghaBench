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
typedef  int (* bench_fn_t ) (int,char const**) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  PR_SET_NAME ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char const*,char const*) ; 
 int FUNC4 (char const*) ; 
 char* FUNC5 (int) ; 

__attribute__((used)) static int FUNC6(const char *coll_name, const char *bench_name, bench_fn_t fn,
		     int argc, const char **argv)
{
	int size;
	char *name;
	int ret;

	size = FUNC4(coll_name) + 1 + FUNC4(bench_name) + 1;

	name = FUNC5(size);
	FUNC0(!name);

	FUNC3(name, size, "%s-%s", coll_name, bench_name);

	FUNC2(PR_SET_NAME, name);
	argv[0] = name;

	ret = fn(argc, argv);

	FUNC1(name);

	return ret;
}