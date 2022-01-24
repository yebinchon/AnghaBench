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
struct trace_iterator {TYPE_1__* trace; int /*<<< orphan*/  mutex; int /*<<< orphan*/  cpu_file; int /*<<< orphan*/ * trace_buffer; struct trace_array* tr; int /*<<< orphan*/  iter_flags; int /*<<< orphan*/  started; int /*<<< orphan*/  seq; } ;
struct trace_array {int trace_flags; size_t clock_id; TYPE_1__* current_trace; int /*<<< orphan*/  trace_buffer; } ;
struct inode {struct trace_array* i_private; } ;
struct file {struct trace_iterator* private_data; } ;
struct TYPE_4__ {scalar_t__ in_ns; } ;
struct TYPE_3__ {int /*<<< orphan*/  ref; int /*<<< orphan*/  (* pipe_open ) (struct trace_iterator*) ;} ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  TRACE_FILE_LAT_FMT ; 
 int /*<<< orphan*/  TRACE_FILE_TIME_IN_NS ; 
 int TRACE_ITER_LATENCY_FMT ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct trace_iterator*) ; 
 struct trace_iterator* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC9 (struct trace_iterator*) ; 
 TYPE_2__* trace_clocks ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_types_lock ; 
 int FUNC11 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC12 (struct inode*) ; 

__attribute__((used)) static int FUNC13(struct inode *inode, struct file *filp)
{
	struct trace_array *tr = inode->i_private;
	struct trace_iterator *iter;
	int ret;

	ret = FUNC11(tr);
	if (ret)
		return ret;

	FUNC6(&trace_types_lock);

	/* create a buffer to store the information to pass to userspace */
	iter = FUNC4(sizeof(*iter), GFP_KERNEL);
	if (!iter) {
		ret = -ENOMEM;
		FUNC0(tr);
		goto out;
	}

	FUNC10(&iter->seq);
	iter->trace = tr->current_trace;

	if (!FUNC1(&iter->started, GFP_KERNEL)) {
		ret = -ENOMEM;
		goto fail;
	}

	/* trace pipe does not show start of buffer */
	FUNC2(iter->started);

	if (tr->trace_flags & TRACE_ITER_LATENCY_FMT)
		iter->iter_flags |= TRACE_FILE_LAT_FMT;

	/* Output in nanoseconds only if we are using a clock in nanoseconds. */
	if (trace_clocks[tr->clock_id].in_ns)
		iter->iter_flags |= TRACE_FILE_TIME_IN_NS;

	iter->tr = tr;
	iter->trace_buffer = &tr->trace_buffer;
	iter->cpu_file = FUNC12(inode);
	FUNC5(&iter->mutex);
	filp->private_data = iter;

	if (iter->trace->pipe_open)
		iter->trace->pipe_open(iter);

	FUNC8(inode, filp);

	tr->current_trace->ref++;
out:
	FUNC7(&trace_types_lock);
	return ret;

fail:
	FUNC3(iter);
	FUNC0(tr);
	FUNC7(&trace_types_lock);
	return ret;
}