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
struct perf_hpp_list {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ESRCH ; 
 int FUNC0 (struct perf_hpp_list*,char*) ; 
 char* FUNC1 (char*,char*,char**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static int FUNC3(struct perf_hpp_list *list, char *str)
{
	char *tmp, *tok;
	int ret = 0;

	for (tok = FUNC1(str, ", ", &tmp);
			tok; tok = FUNC1(NULL, ", ", &tmp)) {
		ret = FUNC0(list, tok);
		if (ret == -EINVAL) {
			FUNC2("Invalid --fields key: `%s'", tok);
			break;
		} else if (ret == -ESRCH) {
			FUNC2("Unknown --fields key: `%s'", tok);
			break;
		}
	}

	return ret;
}