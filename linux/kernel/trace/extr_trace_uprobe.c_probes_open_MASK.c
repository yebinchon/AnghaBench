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
struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int /*<<< orphan*/  LOCKDOWN_TRACEFS ; 
 int O_TRUNC ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  probes_seq_op ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace_uprobe_ops ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	int ret;

	ret = FUNC1(LOCKDOWN_TRACEFS);
	if (ret)
		return ret;

	if ((file->f_mode & FMODE_WRITE) && (file->f_flags & O_TRUNC)) {
		ret = FUNC0(&trace_uprobe_ops);
		if (ret)
			return ret;
	}

	return FUNC2(file, &probes_seq_op);
}