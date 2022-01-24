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
struct file {int f_flags; struct file* private_data; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct file*) ; 
 int O_CREAT ; 
 int O_EXCL ; 
 int O_NOCTTY ; 
 int O_TRUNC ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  FUNC2 (struct file*) ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct file* FUNC5 (struct file*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct file *realfile;
	int err;

	err = FUNC4(FUNC2(file), file->f_flags);
	if (err)
		return err;

	/* No longer need these flags, so don't pass them on to underlying fs */
	file->f_flags &= ~(O_CREAT | O_EXCL | O_NOCTTY | O_TRUNC);

	realfile = FUNC5(file, FUNC3(inode));
	if (FUNC0(realfile))
		return FUNC1(realfile);

	file->private_data = realfile;

	return 0;
}