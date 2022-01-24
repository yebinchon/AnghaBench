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
struct seq_file {int /*<<< orphan*/  size; scalar_t__ buf; struct gfs2_glock_iter* private; } ;
struct inode {int /*<<< orphan*/  i_private; } ;
struct gfs2_glock_iter {int last_pos; int /*<<< orphan*/  hti; int /*<<< orphan*/ * gl; int /*<<< orphan*/  sdp; } ;
struct file {struct seq_file* private_data; } ;

/* Variables and functions */
 int GFP_KERNEL ; 
 int /*<<< orphan*/  GFS2_SEQ_GOODSIZE ; 
 int __GFP_NOWARN ; 
 int /*<<< orphan*/  gl_hash_table ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct file*,struct seq_operations const*,int) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file,
			      const struct seq_operations *ops)
{
	int ret = FUNC2(file, ops, sizeof(struct gfs2_glock_iter));
	if (ret == 0) {
		struct seq_file *seq = file->private_data;
		struct gfs2_glock_iter *gi = seq->private;

		gi->sdp = inode->i_private;
		seq->buf = FUNC0(GFS2_SEQ_GOODSIZE, GFP_KERNEL | __GFP_NOWARN);
		if (seq->buf)
			seq->size = GFS2_SEQ_GOODSIZE;
		/*
		 * Initially, we are "before" the first hash table entry; the
		 * first call to rhashtable_walk_next gets us the first entry.
		 */
		gi->last_pos = -1;
		gi->gl = NULL;
		FUNC1(&gl_hash_table, &gi->hti);
	}
	return ret;
}