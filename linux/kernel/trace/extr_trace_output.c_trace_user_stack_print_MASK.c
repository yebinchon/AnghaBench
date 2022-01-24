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
struct userstack_entry {unsigned long* caller; int /*<<< orphan*/  tgid; } ;
struct trace_seq {int dummy; } ;
struct trace_iterator {int /*<<< orphan*/  ent; struct trace_seq seq; struct trace_array* tr; } ;
struct trace_event {int dummy; } ;
struct trace_array {int trace_flags; } ;
struct task_struct {int dummy; } ;
struct mm_struct {int dummy; } ;
typedef  enum print_line_t { ____Placeholder_print_line_t } print_line_t ;

/* Variables and functions */
 unsigned int FTRACE_STACK_ENTRIES ; 
 int TRACE_ITER_SYM_USEROBJ ; 
 struct task_struct* FUNC0 (int /*<<< orphan*/ ) ; 
 struct mm_struct* FUNC1 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC2 (struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*,struct mm_struct*,unsigned long,int) ; 
 int /*<<< orphan*/  FUNC6 (struct userstack_entry*,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct trace_seq*) ; 
 scalar_t__ FUNC8 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC9 (struct trace_seq*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct trace_seq*,char*) ; 

__attribute__((used)) static enum print_line_t FUNC11(struct trace_iterator *iter,
						int flags, struct trace_event *event)
{
	struct trace_array *tr = iter->tr;
	struct userstack_entry *field;
	struct trace_seq *s = &iter->seq;
	struct mm_struct *mm = NULL;
	unsigned int i;

	FUNC6(field, iter->ent);

	FUNC10(s, "<user stack trace>\n");

	if (tr->trace_flags & TRACE_ITER_SYM_USEROBJ) {
		struct task_struct *task;
		/*
		 * we do the lookup on the thread group leader,
		 * since individual threads might have already quit!
		 */
		FUNC3();
		task = FUNC0(field->tgid);
		if (task)
			mm = FUNC1(task);
		FUNC4();
	}

	for (i = 0; i < FTRACE_STACK_ENTRIES; i++) {
		unsigned long ip = field->caller[i];

		if (!ip || FUNC8(s))
			break;

		FUNC10(s, " => ");
		FUNC5(s, mm, ip, flags);
		FUNC9(s, '\n');
	}

	if (mm)
		FUNC2(mm);

	return FUNC7(s);
}