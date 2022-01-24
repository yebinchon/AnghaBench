#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct trace_pid_list {int dummy; } ;
struct TYPE_4__ {TYPE_1__* data; } ;
struct trace_array {TYPE_2__ trace_buffer; int /*<<< orphan*/  filtered_pids; } ;
struct TYPE_3__ {int /*<<< orphan*/  ignore_pid; } ;

/* Variables and functions */
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  event_mutex ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct trace_pid_list* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_pid_list*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void *data)
{
	struct trace_array *tr = data;
	struct trace_pid_list *pid_list;

	/*
	 * This function is called by on_each_cpu() while the
	 * event_mutex is held.
	 */
	pid_list = FUNC1(tr->filtered_pids,
					     FUNC0(&event_mutex));

	FUNC2(tr->trace_buffer.data->ignore_pid,
		       FUNC3(pid_list, current));
}