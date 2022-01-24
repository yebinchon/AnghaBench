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
struct seq_file {struct gfs2_glock_iter* private; } ;
struct inode {int dummy; } ;
struct gfs2_glock_iter {int /*<<< orphan*/  hti; scalar_t__ gl; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct inode*,struct file*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct seq_file *seq = file->private_data;
	struct gfs2_glock_iter *gi = seq->private;

	if (gi->gl)
		FUNC0(gi->gl);
	FUNC1(&gi->hti);
	return FUNC2(inode, file);
}