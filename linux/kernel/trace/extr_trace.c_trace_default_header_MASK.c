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
struct trace_iterator {int iter_flags; int /*<<< orphan*/  trace_buffer; struct trace_array* tr; } ;
struct trace_array {unsigned long trace_flags; } ;
struct seq_file {struct trace_iterator* private; } ;

/* Variables and functions */
 int TRACE_FILE_LAT_FMT ; 
 unsigned long TRACE_ITER_CONTEXT_INFO ; 
 unsigned long TRACE_ITER_IRQ_INFO ; 
 unsigned long TRACE_ITER_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct seq_file*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct seq_file*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct seq_file*) ; 
 int /*<<< orphan*/  FUNC3 (struct seq_file*,struct trace_iterator*) ; 
 scalar_t__ FUNC4 (struct trace_iterator*) ; 

void FUNC5(struct seq_file *m)
{
	struct trace_iterator *iter = m->private;
	struct trace_array *tr = iter->tr;
	unsigned long trace_flags = tr->trace_flags;

	if (!(trace_flags & TRACE_ITER_CONTEXT_INFO))
		return;

	if (iter->iter_flags & TRACE_FILE_LAT_FMT) {
		/* print nothing if the buffers are empty */
		if (FUNC4(iter))
			return;
		FUNC3(m, iter);
		if (!(trace_flags & TRACE_ITER_VERBOSE))
			FUNC2(m);
	} else {
		if (!(trace_flags & TRACE_ITER_VERBOSE)) {
			if (trace_flags & TRACE_ITER_IRQ_INFO)
				FUNC1(iter->trace_buffer,
							   m, trace_flags);
			else
				FUNC0(iter->trace_buffer, m,
						       trace_flags);
		}
	}
}