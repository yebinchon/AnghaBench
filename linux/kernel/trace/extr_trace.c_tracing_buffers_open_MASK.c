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
struct trace_array {TYPE_2__* current_trace; int /*<<< orphan*/  trace_buffer; } ;
struct inode {struct trace_array* i_private; } ;
struct TYPE_3__ {int /*<<< orphan*/ * trace_buffer; TYPE_2__* trace; int /*<<< orphan*/  cpu_file; struct trace_array* tr; } ;
struct ftrace_buffer_info {unsigned int read; int /*<<< orphan*/ * spare; TYPE_1__ iter; } ;
struct file {struct ftrace_buffer_info* private_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  ref; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ftrace_buffer_info* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC4 (struct trace_array*) ; 
 int /*<<< orphan*/  trace_types_lock ; 
 int FUNC5 (struct trace_array*) ; 
 int /*<<< orphan*/  FUNC6 (struct inode*) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *filp)
{
	struct trace_array *tr = inode->i_private;
	struct ftrace_buffer_info *info;
	int ret;

	ret = FUNC5(tr);
	if (ret)
		return ret;

	info = FUNC0(sizeof(*info), GFP_KERNEL);
	if (!info) {
		FUNC4(tr);
		return -ENOMEM;
	}

	FUNC1(&trace_types_lock);

	info->iter.tr		= tr;
	info->iter.cpu_file	= FUNC6(inode);
	info->iter.trace	= tr->current_trace;
	info->iter.trace_buffer = &tr->trace_buffer;
	info->spare		= NULL;
	/* Force reading ring buffer for first read */
	info->read		= (unsigned int)-1;

	filp->private_data = info;

	tr->current_trace->ref++;

	FUNC2(&trace_types_lock);

	ret = FUNC3(inode, filp);
	if (ret < 0)
		FUNC4(tr);

	return ret;
}