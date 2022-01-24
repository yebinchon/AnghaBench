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
struct trace_event {int dummy; } ;
struct ftrace_entry {int /*<<< orphan*/  parent_ip; int /*<<< orphan*/  ip; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ftrace_entry*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum print_line_t FUNC3(struct trace_iterator *iter, int flags,
				      struct trace_event *event)
{
	struct ftrace_entry *field;

	FUNC0(field, iter->ent);

	FUNC2(&iter->seq, "%lx %lx\n",
			 field->ip,
			 field->parent_ip);

	return FUNC1(&iter->seq);
}