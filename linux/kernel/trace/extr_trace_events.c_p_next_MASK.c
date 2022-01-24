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
struct trace_pid_list {int dummy; } ;
struct trace_array {int /*<<< orphan*/  filtered_pids; } ;
struct seq_file {struct trace_array* private; } ;
typedef  int /*<<< orphan*/  loff_t ;

/* Variables and functions */
 struct trace_pid_list* FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (struct trace_pid_list*,void*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *
FUNC2(struct seq_file *m, void *v, loff_t *pos)
{
	struct trace_array *tr = m->private;
	struct trace_pid_list *pid_list = FUNC0(tr->filtered_pids);

	return FUNC1(pid_list, v, pos);
}