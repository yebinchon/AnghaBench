#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  filter; } ;
struct TYPE_4__ {int /*<<< orphan*/  dentry; } ;
struct trace_uprobe {int /*<<< orphan*/ * inode; TYPE_2__ consumer; int /*<<< orphan*/  offset; scalar_t__ ref_ctr_offset; TYPE_1__ path; } ;
typedef  int /*<<< orphan*/  filter_func_t ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,TYPE_2__*) ; 

__attribute__((used)) static int FUNC3(struct trace_uprobe *tu, filter_func_t filter)
{
	int ret;

	tu->consumer.filter = filter;
	tu->inode = FUNC0(tu->path.dentry);

	if (tu->ref_ctr_offset)
		ret = FUNC2(tu->inode, tu->offset,
				tu->ref_ctr_offset, &tu->consumer);
	else
		ret = FUNC1(tu->inode, tu->offset, &tu->consumer);

	if (ret)
		tu->inode = NULL;

	return ret;
}