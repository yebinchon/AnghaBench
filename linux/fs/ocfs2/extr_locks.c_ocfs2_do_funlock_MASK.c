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
struct ocfs2_file_private {int /*<<< orphan*/  fp_mutex; } ;
struct file_lock {int dummy; } ;
struct file {struct ocfs2_file_private* private_data; } ;

/* Variables and functions */
 int FUNC0 (struct file*,struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct file*) ; 

__attribute__((used)) static int FUNC4(struct file *file, int cmd, struct file_lock *fl)
{
	int ret;
	struct ocfs2_file_private *fp = file->private_data;

	FUNC1(&fp->fp_mutex);
	FUNC3(file);
	ret = FUNC0(file, fl);
	FUNC2(&fp->fp_mutex);

	return ret;
}