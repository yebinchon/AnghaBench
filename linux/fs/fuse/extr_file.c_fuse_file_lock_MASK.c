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
struct fuse_conn {scalar_t__ no_lock; } ;
struct file_lock {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int F_CANCELLK ; 
 int F_GETLK ; 
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct file*,struct file_lock*) ; 
 int FUNC2 (struct file*,struct file_lock*,int /*<<< orphan*/ ) ; 
 struct fuse_conn* FUNC3 (struct inode*) ; 
 int FUNC4 (struct file*,struct file_lock*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct file*,struct file_lock*) ; 

__attribute__((used)) static int FUNC6(struct file *file, int cmd, struct file_lock *fl)
{
	struct inode *inode = FUNC0(file);
	struct fuse_conn *fc = FUNC3(inode);
	int err;

	if (cmd == F_CANCELLK) {
		err = 0;
	} else if (cmd == F_GETLK) {
		if (fc->no_lock) {
			FUNC5(file, fl);
			err = 0;
		} else
			err = FUNC1(file, fl);
	} else {
		if (fc->no_lock)
			err = FUNC4(file, fl, NULL);
		else
			err = FUNC2(file, fl, 0);
	}
	return err;
}