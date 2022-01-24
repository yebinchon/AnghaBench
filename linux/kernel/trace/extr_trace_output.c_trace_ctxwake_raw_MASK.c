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
struct ctx_switch_entry {int /*<<< orphan*/  next_prio; int /*<<< orphan*/  next_pid; int /*<<< orphan*/  next_cpu; int /*<<< orphan*/  prev_prio; int /*<<< orphan*/  prev_pid; int /*<<< orphan*/  next_state; int /*<<< orphan*/  prev_state; } ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ctx_switch_entry*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct trace_iterator *iter, char S)
{
	struct ctx_switch_entry *field;
	int T;

	FUNC1(field, iter->ent);

	if (!S)
		S = FUNC0(field->prev_state);
	T = FUNC0(field->next_state);
	FUNC3(&iter->seq, "%d %d %c %d %d %d %c\n",
			 field->prev_pid,
			 field->prev_prio,
			 S,
			 field->next_cpu,
			 field->next_pid,
			 field->next_prio,
			 T);

	return FUNC2(&iter->seq);
}