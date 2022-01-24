#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ cork_fd; } ;
struct evlist {TYPE_1__ workload; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (scalar_t__,char*,int) ; 

int FUNC3(struct evlist *evlist)
{
	if (evlist->workload.cork_fd > 0) {
		char bf = 0;
		int ret;
		/*
		 * Remove the cork, let it rip!
		 */
		ret = FUNC2(evlist->workload.cork_fd, &bf, 1);
		if (ret < 0)
			FUNC1("unable to write to pipe");

		FUNC0(evlist->workload.cork_fd);
		return ret;
	}

	return 0;
}