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
struct pipe_inode_info {int /*<<< orphan*/  fasync_readers; int /*<<< orphan*/  fasync_writers; } ;
struct file {int f_mode; struct pipe_inode_info* private_data; } ;

/* Variables and functions */
 int FMODE_READ ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct pipe_inode_info*) ; 
 int FUNC2 (int,struct file*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC3(int fd, struct file *filp, int on)
{
	struct pipe_inode_info *pipe = filp->private_data;
	int retval = 0;

	FUNC0(pipe);
	if (filp->f_mode & FMODE_READ)
		retval = FUNC2(fd, filp, on, &pipe->fasync_readers);
	if ((filp->f_mode & FMODE_WRITE) && retval >= 0) {
		retval = FUNC2(fd, filp, on, &pipe->fasync_writers);
		if (retval < 0 && (filp->f_mode & FMODE_READ))
			/* this can happen only if on == T */
			FUNC2(-1, filp, 0, &pipe->fasync_readers);
	}
	FUNC1(pipe);
	return retval;
}