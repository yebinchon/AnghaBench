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
struct trace_iterator {int /*<<< orphan*/  mutex; int /*<<< orphan*/  started; TYPE_2__* trace; } ;
struct trace_array {TYPE_1__* current_trace; } ;
struct inode {struct trace_array* i_private; } ;
struct file {struct trace_iterator* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  (* pipe_close ) (struct trace_iterator*) ;} ;
struct TYPE_3__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct trace_iterator*) ; 
 int /*<<< orphan*/  FUNC6 (struct trace_array*) ; 
 int /*<<< orphan*/  trace_types_lock ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct trace_iterator *iter = file->private_data;
	struct trace_array *tr = inode->i_private;

	FUNC3(&trace_types_lock);

	tr->current_trace->ref--;

	if (iter->trace->pipe_close)
		iter->trace->pipe_close(iter);

	FUNC4(&trace_types_lock);

	FUNC0(iter->started);
	FUNC2(&iter->mutex);
	FUNC1(iter);

	FUNC6(tr);

	return 0;
}