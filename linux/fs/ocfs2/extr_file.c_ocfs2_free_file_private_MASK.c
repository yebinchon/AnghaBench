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
struct ocfs2_super {int dummy; } ;
struct ocfs2_file_private {int /*<<< orphan*/  fp_flock; } ;
struct inode {int /*<<< orphan*/  i_sb; } ;
struct file {struct ocfs2_file_private* private_data; } ;

/* Variables and functions */
 struct ocfs2_super* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ocfs2_file_private*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ocfs2_super*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct inode *inode, struct file *file)
{
	struct ocfs2_file_private *fp = file->private_data;
	struct ocfs2_super *osb = FUNC0(inode->i_sb);

	if (fp) {
		FUNC3(osb, &fp->fp_flock);
		FUNC2(&fp->fp_flock);
		FUNC1(fp);
		file->private_data = NULL;
	}
}