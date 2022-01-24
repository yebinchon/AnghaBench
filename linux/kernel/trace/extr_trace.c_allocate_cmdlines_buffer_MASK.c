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
struct saved_cmdlines_buffer {unsigned int cmdline_num; int /*<<< orphan*/ * map_cmdline_to_pid; int /*<<< orphan*/  map_pid_to_cmdline; scalar_t__ cmdline_idx; void* saved_cmdlines; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  NO_CMDLINE_MAP ; 
 unsigned int TASK_COMM_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (unsigned int,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static int FUNC3(unsigned int val,
				    struct saved_cmdlines_buffer *s)
{
	s->map_cmdline_to_pid = FUNC1(val,
					      sizeof(*s->map_cmdline_to_pid),
					      GFP_KERNEL);
	if (!s->map_cmdline_to_pid)
		return -ENOMEM;

	s->saved_cmdlines = FUNC1(TASK_COMM_LEN, val, GFP_KERNEL);
	if (!s->saved_cmdlines) {
		FUNC0(s->map_cmdline_to_pid);
		return -ENOMEM;
	}

	s->cmdline_idx = 0;
	s->cmdline_num = val;
	FUNC2(&s->map_pid_to_cmdline, NO_CMDLINE_MAP,
	       sizeof(s->map_pid_to_cmdline));
	FUNC2(s->map_cmdline_to_pid, NO_CMDLINE_MAP,
	       val * sizeof(*s->map_cmdline_to_pid));

	return 0;
}