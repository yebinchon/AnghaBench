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
struct trace_seq {int dummy; } ;
struct trace_iterator {scalar_t__ ent_size; scalar_t__ ent; struct trace_seq seq; } ;
struct trace_event {int dummy; } ;
struct stack_entry {unsigned long* caller; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 unsigned long ULONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (struct trace_seq*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC1 (struct stack_entry*,scalar_t__) ; 
 int FUNC2 (struct trace_seq*) ; 
 scalar_t__ FUNC3 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,char) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,char*) ; 

__attribute__((used)) static enum print_line_t FUNC6(struct trace_iterator *iter,
					   int flags, struct trace_event *event)
{
	struct stack_entry *field;
	struct trace_seq *s = &iter->seq;
	unsigned long *p;
	unsigned long *end;

	FUNC1(field, iter->ent);
	end = (unsigned long *)((long)iter->ent + iter->ent_size);

	FUNC5(s, "<stack trace>\n");

	for (p = field->caller; p && p < end && *p != ULONG_MAX; p++) {

		if (FUNC3(s))
			break;

		FUNC5(s, " => ");
		FUNC0(s, *p, flags);
		FUNC4(s, '\n');
	}

	return FUNC2(s);
}