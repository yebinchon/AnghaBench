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
struct ocfs2_control_private {int op_this_node; int /*<<< orphan*/  op_list; } ;
struct inode {int dummy; } ;
struct file {struct ocfs2_control_private* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ocfs2_control_private* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ocfs2_control_lock ; 
 int /*<<< orphan*/  ocfs2_control_private_list ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct ocfs2_control_private *p;

	p = FUNC0(sizeof(struct ocfs2_control_private), GFP_KERNEL);
	if (!p)
		return -ENOMEM;
	p->op_this_node = -1;

	FUNC2(&ocfs2_control_lock);
	file->private_data = p;
	FUNC1(&p->op_list, &ocfs2_control_private_list);
	FUNC3(&ocfs2_control_lock);

	return 0;
}