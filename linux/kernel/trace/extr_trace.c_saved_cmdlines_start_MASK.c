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
struct seq_file {int dummy; } ;
typedef  scalar_t__ loff_t ;
struct TYPE_2__ {int /*<<< orphan*/ * map_cmdline_to_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 void* FUNC2 (struct seq_file*,void*,scalar_t__*) ; 
 TYPE_1__* savedcmd ; 
 int /*<<< orphan*/  trace_cmdline_lock ; 

__attribute__((used)) static void *FUNC3(struct seq_file *m, loff_t *pos)
{
	void *v;
	loff_t l = 0;

	FUNC1();
	FUNC0(&trace_cmdline_lock);

	v = &savedcmd->map_cmdline_to_pid[0];
	while (l <= *pos) {
		v = FUNC2(m, v, &l);
		if (!v)
			return NULL;
	}

	return v;
}