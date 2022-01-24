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
struct trace_iterator {unsigned int cpu; int iter_flags; unsigned int ts; struct trace_entry* ent; struct trace_seq seq; struct trace_array* tr; } ;
struct trace_entry {int /*<<< orphan*/  pid; } ;
struct trace_array {int trace_flags; } ;

/* Variables and functions */
 int TASK_COMM_LEN ; 
 int TRACE_FILE_TIME_IN_NS ; 
 int TRACE_ITER_IRQ_INFO ; 
 int TRACE_ITER_RECORD_TGID ; 
 int /*<<< orphan*/  USEC_PER_SEC ; 
 unsigned long FUNC0 (unsigned long long,int /*<<< orphan*/ ) ; 
 unsigned long long FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_seq*,struct trace_entry*) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_seq*) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_seq*,char*,...) ; 

int FUNC7(struct trace_iterator *iter)
{
	struct trace_array *tr = iter->tr;
	struct trace_seq *s = &iter->seq;
	struct trace_entry *entry = iter->ent;
	unsigned long long t;
	unsigned long secs, usec_rem;
	char comm[TASK_COMM_LEN];

	FUNC2(entry->pid, comm);

	FUNC6(s, "%16s-%-5d ", comm, entry->pid);

	if (tr->trace_flags & TRACE_ITER_RECORD_TGID) {
		unsigned int tgid = FUNC3(entry->pid);

		if (!tgid)
			FUNC6(s, "(-----) ");
		else
			FUNC6(s, "(%5d) ", tgid);
	}

	FUNC6(s, "[%03d] ", iter->cpu);

	if (tr->trace_flags & TRACE_ITER_IRQ_INFO)
		FUNC4(s, entry);

	if (iter->iter_flags & TRACE_FILE_TIME_IN_NS) {
		t = FUNC1(iter->ts);
		usec_rem = FUNC0(t, USEC_PER_SEC);
		secs = (unsigned long)t;
		FUNC6(s, " %5lu.%06lu: ", secs, usec_rem);
	} else
		FUNC6(s, " %12llu: ", iter->ts);

	return !FUNC5(s);
}