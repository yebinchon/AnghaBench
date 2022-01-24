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
struct trace_array {int dummy; } ;
struct seq_operations {int dummy; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int f_mode; int f_flags; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*) ; 
 int FUNC1 (struct inode*,struct file*,struct seq_operations const*) ; 
 struct seq_operations show_set_pid_seq_ops ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*) ; 
 int FUNC3 (struct trace_array*) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *file)
{
	const struct seq_operations *seq_ops = &show_set_pid_seq_ops;
	struct trace_array *tr = inode->i_private;
	int ret;

	ret = FUNC3(tr);
	if (ret)
		return ret;

	if ((file->f_mode & FMODE_WRITE) &&
	    (file->f_flags & O_TRUNC))
		FUNC0(tr);

	ret = FUNC1(inode, file, seq_ops);
	if (ret < 0)
		FUNC2(tr);
	return ret;
}