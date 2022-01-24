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
struct seq_file {struct rpc_clnt* private; } ;
struct rpc_clnt {int /*<<< orphan*/  cl_count; } ;
struct inode {int dummy; } ;
struct TYPE_4__ {TYPE_2__* dentry; } ;
struct file {TYPE_1__ f_path; struct seq_file* private_data; } ;
struct TYPE_6__ {struct rpc_clnt* private; } ;
struct TYPE_5__ {int /*<<< orphan*/  d_lock; } ;

/* Variables and functions */
 int EINVAL ; 
 TYPE_3__* FUNC0 (struct inode*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  rpc_show_info ; 
 int FUNC3 (struct file*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC7(struct inode *inode, struct file *file)
{
	struct rpc_clnt *clnt = NULL;
	int ret = FUNC3(file, rpc_show_info, NULL);

	if (!ret) {
		struct seq_file *m = file->private_data;

		FUNC5(&file->f_path.dentry->d_lock);
		if (!FUNC2(file->f_path.dentry))
			clnt = FUNC0(inode)->private;
		if (clnt != NULL && FUNC1(&clnt->cl_count)) {
			FUNC6(&file->f_path.dentry->d_lock);
			m->private = clnt;
		} else {
			FUNC6(&file->f_path.dentry->d_lock);
			FUNC4(inode, file);
			ret = -EINVAL;
		}
	}
	return ret;
}