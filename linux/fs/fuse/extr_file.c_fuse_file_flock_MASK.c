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
struct fuse_file {int flock; } ;
struct fuse_conn {scalar_t__ no_flock; } ;
struct file_lock {int dummy; } ;
struct file {struct fuse_file* private_data; } ;

/* Variables and functions */
 struct inode* FUNC0 (struct file*) ; 
 int FUNC1 (struct file*,struct file_lock*,int) ; 
 struct fuse_conn* FUNC2 (struct inode*) ; 
 int FUNC3 (struct file*,struct file_lock*) ; 

__attribute__((used)) static int FUNC4(struct file *file, int cmd, struct file_lock *fl)
{
	struct inode *inode = FUNC0(file);
	struct fuse_conn *fc = FUNC2(inode);
	int err;

	if (fc->no_flock) {
		err = FUNC3(file, fl);
	} else {
		struct fuse_file *ff = file->private_data;

		/* emulate flock with POSIX locks */
		ff->flock = true;
		err = FUNC1(file, fl, 1);
	}

	return err;
}