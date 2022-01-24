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
typedef  int /*<<< orphan*/  file ;

/* Variables and functions */
 int E2BIG ; 
 int PATH_MAX ; 
 int errno ; 
 int FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,char const*) ; 
 int FUNC2 (char*,int,char*,char const*,char const*) ; 

__attribute__((used)) static int FUNC3(const char *tp_category,
				   const char *tp_name)
{
	char file[PATH_MAX];
	int ret;

	ret = FUNC2(file, sizeof(file),
		       "/sys/kernel/debug/tracing/events/%s/%s/id",
		       tp_category, tp_name);
	if (ret < 0)
		return -errno;
	if (ret >= sizeof(file)) {
		FUNC1("tracepoint %s/%s path is too long\n",
			 tp_category, tp_name);
		return -E2BIG;
	}
	return FUNC0(file, "%d\n");
}