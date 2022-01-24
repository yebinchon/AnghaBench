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
struct trace_iterator {int /*<<< orphan*/  iter_flags; } ;
struct trace_buffer {int dummy; } ;
struct trace_array {int trace_flags; struct trace_buffer max_buffer; TYPE_1__* current_trace; struct trace_buffer trace_buffer; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int f_mode; int f_flags; } ;
struct TYPE_2__ {scalar_t__ print_max; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 scalar_t__ FUNC0 (struct trace_iterator*) ; 
 int O_TRUNC ; 
 int FUNC1 (struct trace_iterator*) ; 
 int RING_BUFFER_ALL_CPUS ; 
 int /*<<< orphan*/  TRACE_FILE_LAT_FMT ; 
 int TRACE_ITER_LATENCY_FMT ; 
 struct trace_iterator* FUNC2 (struct inode*,struct file*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_array*) ; 
 int FUNC4 (struct trace_array*) ; 
 int FUNC5 (struct inode*) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_buffer*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct trace_buffer*) ; 

__attribute__((used)) static int FUNC8(struct inode *inode, struct file *file)
{
	struct trace_array *tr = inode->i_private;
	struct trace_iterator *iter;
	int ret;

	ret = FUNC4(tr);
	if (ret)
		return ret;

	/* If this file was open for write, then erase contents */
	if ((file->f_mode & FMODE_WRITE) && (file->f_flags & O_TRUNC)) {
		int cpu = FUNC5(inode);
		struct trace_buffer *trace_buf = &tr->trace_buffer;

#ifdef CONFIG_TRACER_MAX_TRACE
		if (tr->current_trace->print_max)
			trace_buf = &tr->max_buffer;
#endif

		if (cpu == RING_BUFFER_ALL_CPUS)
			FUNC7(trace_buf);
		else
			FUNC6(trace_buf, cpu);
	}

	if (file->f_mode & FMODE_READ) {
		iter = FUNC2(inode, file, false);
		if (FUNC0(iter))
			ret = FUNC1(iter);
		else if (tr->trace_flags & TRACE_ITER_LATENCY_FMT)
			iter->iter_flags |= TRACE_FILE_LAT_FMT;
	}

	if (ret < 0)
		FUNC3(tr);

	return ret;
}