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
struct inode {int /*<<< orphan*/  i_pipe; } ;
struct file {int /*<<< orphan*/  private_data; } ;

/* Variables and functions */
 int ENFILE ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int O_DIRECT ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int O_WRONLY ; 
 int FUNC1 (struct file*) ; 
 struct file* FUNC2 (struct file*,int,int /*<<< orphan*/ *) ; 
 struct file* FUNC3 (struct inode*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct file*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 struct inode* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct inode*) ; 
 int /*<<< orphan*/  pipe_mnt ; 
 int /*<<< orphan*/  pipefifo_fops ; 
 int /*<<< orphan*/  FUNC8 (struct inode*,int /*<<< orphan*/ ) ; 

int FUNC9(struct file **res, int flags)
{
	struct inode *inode = FUNC6();
	struct file *f;

	if (!inode)
		return -ENFILE;

	f = FUNC3(inode, pipe_mnt, "",
				O_WRONLY | (flags & (O_NONBLOCK | O_DIRECT)),
				&pipefifo_fops);
	if (FUNC0(f)) {
		FUNC5(inode->i_pipe);
		FUNC7(inode);
		return FUNC1(f);
	}

	f->private_data = inode->i_pipe;

	res[0] = FUNC2(f, O_RDONLY | (flags & O_NONBLOCK),
				  &pipefifo_fops);
	if (FUNC0(res[0])) {
		FUNC8(inode, inode->i_pipe);
		FUNC4(f);
		return FUNC1(res[0]);
	}
	res[0]->private_data = inode->i_pipe;
	res[1] = f;
	return 0;
}