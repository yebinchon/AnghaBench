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
struct trace_iterator {int /*<<< orphan*/  seq; int /*<<< orphan*/  ent; } ;
struct ctx_switch_entry {int /*<<< orphan*/  next_prio; int /*<<< orphan*/  next_pid; int /*<<< orphan*/  next_cpu; int /*<<< orphan*/  prev_prio; int /*<<< orphan*/  prev_pid; int /*<<< orphan*/  prev_state; int /*<<< orphan*/  next_state; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int TASK_COMM_LEN ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ctx_switch_entry*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 

__attribute__((used)) static enum print_line_t FUNC5(struct trace_iterator *iter,
					     char *delim)
{
	struct ctx_switch_entry *field;
	char comm[TASK_COMM_LEN];
	int S, T;


	FUNC1(field, iter->ent);

	T = FUNC0(field->next_state);
	S = FUNC0(field->prev_state);
	FUNC2(field->next_pid, comm);
	FUNC4(&iter->seq,
			 " %5d:%3d:%c %s [%03d] %5d:%3d:%c %s\n",
			 field->prev_pid,
			 field->prev_prio,
			 S, delim,
			 field->next_cpu,
			 field->next_pid,
			 field->next_prio,
			 T, comm);

	return FUNC3(&iter->seq);
}