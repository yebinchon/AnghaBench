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
struct seq_file {struct l2tp_dfs_seq_data* private; } ;
struct l2tp_dfs_seq_data {scalar_t__ net; } ;
struct inode {int dummy; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct l2tp_dfs_seq_data*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct l2tp_dfs_seq_data *pd;
	struct seq_file *seq;

	seq = file->private_data;
	pd = seq->private;
	if (pd->net)
		FUNC1(pd->net);
	FUNC0(pd);
	FUNC2(inode, file);

	return 0;
}