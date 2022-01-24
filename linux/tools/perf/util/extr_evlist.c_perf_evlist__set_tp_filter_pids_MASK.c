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
struct evlist {int dummy; } ;
typedef  int /*<<< orphan*/  pid_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char**,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct evlist*,char*) ; 

int FUNC3(struct evlist *evlist, size_t npids, pid_t *pids)
{
	char *filter;
	int ret = -1;
	size_t i;

	for (i = 0; i < npids; ++i) {
		if (i == 0) {
			if (FUNC0(&filter, "common_pid != %s", pids[i]) < 0)
				return -1;
		} else {
			char *tmp;

			if (FUNC0(&tmp, "%s && common_pid != %d", filter, pids[i]) < 0)
				goto out_free;

			FUNC1(filter);
			filter = tmp;
		}
	}

	ret = FUNC2(evlist, filter);
out_free:
	FUNC1(filter);
	return ret;
}