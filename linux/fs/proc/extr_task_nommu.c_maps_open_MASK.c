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
struct seq_operations {int dummy; } ;
struct proc_maps_private {int /*<<< orphan*/  mm; struct inode* inode; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PTRACE_MODE_READ ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 struct proc_maps_private* FUNC2 (struct file*,struct seq_operations const*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC5(struct inode *inode, struct file *file,
		     const struct seq_operations *ops)
{
	struct proc_maps_private *priv;

	priv = FUNC2(file, ops, sizeof(*priv));
	if (!priv)
		return -ENOMEM;

	priv->inode = inode;
	priv->mm = FUNC3(inode, PTRACE_MODE_READ);
	if (FUNC0(priv->mm)) {
		int err = FUNC1(priv->mm);

		FUNC4(inode, file);
		return err;
	}

	return 0;
}