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
struct seq_file {struct l2tp_dfs_seq_data* private; } ;
struct l2tp_dfs_seq_data {int /*<<< orphan*/  net; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct l2tp_dfs_seq_data*) ; 
 struct l2tp_dfs_seq_data* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  l2tp_dfs_seq_ops ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct file*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct l2tp_dfs_seq_data *pd;
	struct seq_file *seq;
	int rc = -ENOMEM;

	pd = FUNC4(sizeof(*pd), GFP_KERNEL);
	if (pd == NULL)
		goto out;

	/* Derive the network namespace from the pid opening the
	 * file.
	 */
	pd->net = FUNC2(current->pid);
	if (FUNC0(pd->net)) {
		rc = FUNC1(pd->net);
		goto err_free_pd;
	}

	rc = FUNC6(file, &l2tp_dfs_seq_ops);
	if (rc)
		goto err_free_net;

	seq = file->private_data;
	seq->private = pd;

out:
	return rc;

err_free_net:
	FUNC5(pd->net);
err_free_pd:
	FUNC3(pd);
	goto out;
}