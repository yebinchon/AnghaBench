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
struct TYPE_3__ {int rlim_cur; int rlim_max; } ;

/* Variables and functions */
 int /*<<< orphan*/  RLIMIT_MSGQUEUE ; 
 int cur_def_msgs ; 
 int cur_def_msgsize ; 
 TYPE_1__ cur_limits ; 
 int cur_max_msgs ; 
 int cur_max_msgsize ; 
 int /*<<< orphan*/  def_msgs ; 
 int /*<<< orphan*/  def_msgsize ; 
 scalar_t__ default_settings ; 
 int /*<<< orphan*/  max_msgs ; 
 int /*<<< orphan*/  max_msgsize ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_1__*) ; 

void FUNC3()
{
	int rlim_needed;

	if (cur_limits.rlim_cur < 4096) {
		FUNC0("Current rlimit value for POSIX message queue bytes is "
		       "unreasonably low,\nincreasing.\n\n");
		cur_limits.rlim_cur = 8192;
		cur_limits.rlim_max = 16384;
		FUNC2(RLIMIT_MSGQUEUE, &cur_limits);
	}

	if (default_settings) {
		rlim_needed = (cur_def_msgs + 1) * (cur_def_msgsize + 1 +
						    2 * sizeof(void *));
		if (rlim_needed > cur_limits.rlim_cur) {
			FUNC0("Temporarily lowering default queue parameters "
			       "to something that will work\n"
			       "with the current rlimit values.\n\n");
			FUNC1(def_msgs, 10);
			cur_def_msgs = 10;
			FUNC1(def_msgsize, 128);
			cur_def_msgsize = 128;
		}
	} else {
		rlim_needed = (cur_max_msgs + 1) * (cur_max_msgsize + 1 +
						    2 * sizeof(void *));
		if (rlim_needed > cur_limits.rlim_cur) {
			FUNC0("Temporarily lowering maximum queue parameters "
			       "to something that will work\n"
			       "with the current rlimit values in case this is "
			       "a kernel that ties the default\n"
			       "queue parameters to the maximum queue "
			       "parameters.\n\n");
			FUNC1(max_msgs, 10);
			cur_max_msgs = 10;
			FUNC1(max_msgsize, 128);
			cur_max_msgsize = 128;
		}
	}
}