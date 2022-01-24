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
struct seq_file {int /*<<< orphan*/  private; } ;
struct TYPE_2__ {int /*<<< orphan*/  prop; } ;
struct op_inode_info {scalar_t__ type; TYPE_1__ u; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct op_inode_info* FUNC1 (struct inode*) ; 
 scalar_t__ op_inode_prop ; 
 int /*<<< orphan*/  property_op ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct op_inode_info *oi = FUNC1(inode);
	int ret;

	FUNC0(oi->type != op_inode_prop);

	ret = FUNC2(file, &property_op);
	if (!ret) {
		struct seq_file *m = file->private_data;
		m->private = oi->u.prop;
	}
	return ret;
}