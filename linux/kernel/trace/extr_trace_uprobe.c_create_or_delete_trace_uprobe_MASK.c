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
 int ECANCELED ; 
 int EINVAL ; 
 int FUNC0 (int,char**,int /*<<< orphan*/ *) ; 
 int FUNC1 (int,char const**) ; 
 int /*<<< orphan*/  trace_uprobe_ops ; 

__attribute__((used)) static int FUNC2(int argc, char **argv)
{
	int ret;

	if (argv[0][0] == '-')
		return FUNC0(argc, argv, &trace_uprobe_ops);

	ret = FUNC1(argc, (const char **)argv);
	return ret == -ECANCELED ? -EINVAL : ret;
}