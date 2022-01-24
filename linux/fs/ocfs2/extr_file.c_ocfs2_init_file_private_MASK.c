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
struct ocfs2_file_private {int /*<<< orphan*/  fp_flock; int /*<<< orphan*/  fp_mutex; struct file* fp_file; } ;
struct inode {int dummy; } ;
struct file {struct ocfs2_file_private* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct ocfs2_file_private* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct ocfs2_file_private*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct ocfs2_file_private *fp;

	fp = FUNC0(sizeof(struct ocfs2_file_private), GFP_KERNEL);
	if (!fp)
		return -ENOMEM;

	fp->fp_file = file;
	FUNC1(&fp->fp_mutex);
	FUNC2(&fp->fp_flock, fp);
	file->private_data = fp;

	return 0;
}