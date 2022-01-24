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
struct seq_file {struct trace_array* private; } ;
struct inode {struct trace_array* i_private; } ;
struct file {int f_mode; int f_flags; struct seq_file* private_data; } ;

/* Variables and functions */
 int FMODE_WRITE ; 
 int O_TRUNC ; 
 int /*<<< orphan*/  FUNC0 (struct trace_array*) ; 
 int /*<<< orphan*/  ftrace_pid_sops ; 
 int FUNC1 (struct file*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct trace_array*) ; 
 int FUNC3 (struct trace_array*) ; 

__attribute__((used)) static int
FUNC4(struct inode *inode, struct file *file)
{
	struct trace_array *tr = inode->i_private;
	struct seq_file *m;
	int ret = 0;

	ret = FUNC3(tr);
	if (ret)
		return ret;

	if ((file->f_mode & FMODE_WRITE) &&
	    (file->f_flags & O_TRUNC))
		FUNC0(tr);

	ret = FUNC1(file, &ftrace_pid_sops);
	if (ret < 0) {
		FUNC2(tr);
	} else {
		m = file->private_data;
		/* copy tr over to seq ops */
		m->private = tr;
	}

	return ret;
}