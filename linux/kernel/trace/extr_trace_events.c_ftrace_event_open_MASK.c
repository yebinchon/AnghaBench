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
struct seq_file {int /*<<< orphan*/  private; } ;
struct inode {int /*<<< orphan*/  i_private; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCKDOWN_TRACEFS ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct file*,struct seq_operations const*) ; 

__attribute__((used)) static int
FUNC2(struct inode *inode, struct file *file,
		  const struct seq_operations *seq_ops)
{
	struct seq_file *m;
	int ret;

	ret = FUNC0(LOCKDOWN_TRACEFS);
	if (ret)
		return ret;

	ret = FUNC1(file, seq_ops);
	if (ret < 0)
		return ret;
	m = file->private_data;
	/* copy tr over to seq ops */
	m->private = inode->i_private;

	return ret;
}