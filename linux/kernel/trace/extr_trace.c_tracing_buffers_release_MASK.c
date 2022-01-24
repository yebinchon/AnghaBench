#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct trace_iterator {TYPE_1__* trace_buffer; TYPE_3__* tr; } ;
struct inode {int dummy; } ;
struct ftrace_buffer_info {scalar_t__ spare; int /*<<< orphan*/  spare_cpu; struct trace_iterator iter; } ;
struct file {struct ftrace_buffer_info* private_data; } ;
struct TYPE_6__ {TYPE_2__* current_trace; } ;
struct TYPE_5__ {int /*<<< orphan*/  ref; } ;
struct TYPE_4__ {int /*<<< orphan*/  buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct ftrace_buffer_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  trace_types_lock ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file)
{
	struct ftrace_buffer_info *info = file->private_data;
	struct trace_iterator *iter = &info->iter;

	FUNC2(&trace_types_lock);

	iter->tr->current_trace->ref--;

	FUNC0(iter->tr);

	if (info->spare)
		FUNC4(iter->trace_buffer->buffer,
					   info->spare_cpu, info->spare);
	FUNC1(info);

	FUNC3(&trace_types_lock);

	return 0;
}