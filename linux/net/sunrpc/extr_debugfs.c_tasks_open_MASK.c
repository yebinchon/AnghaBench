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
struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_count; } ;
struct inode {struct rpc_clnt* i_private; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  tasks_seq_operations ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *filp)
{
	int ret = FUNC1(filp, &tasks_seq_operations);
	if (!ret) {
		struct seq_file *seq = filp->private_data;
		struct rpc_clnt *clnt = seq->private = inode->i_private;

		if (!FUNC0(&clnt->cl_count)) {
			FUNC2(inode, filp);
			ret = -EINVAL;
		}
	}

	return ret;
}