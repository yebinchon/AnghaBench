#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct pipe_inode_info {int files; int readers; int writers; } ;
struct inode {int i_mode; int /*<<< orphan*/  i_ctime; int /*<<< orphan*/  i_mtime; int /*<<< orphan*/  i_atime; int /*<<< orphan*/  i_gid; int /*<<< orphan*/  i_uid; int /*<<< orphan*/  i_state; int /*<<< orphan*/ * i_fop; struct pipe_inode_info* i_pipe; int /*<<< orphan*/  i_ino; } ;
struct TYPE_2__ {int /*<<< orphan*/  mnt_sb; } ;

/* Variables and functions */
 int /*<<< orphan*/  I_DIRTY ; 
 int S_IFIFO ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 struct pipe_inode_info* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct inode*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct inode*) ; 
 struct inode* FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* pipe_mnt ; 
 int /*<<< orphan*/  pipefifo_fops ; 

__attribute__((used)) static struct inode * FUNC7(void)
{
	struct inode *inode = FUNC6(pipe_mnt->mnt_sb);
	struct pipe_inode_info *pipe;

	if (!inode)
		goto fail_inode;

	inode->i_ino = FUNC4();

	pipe = FUNC0();
	if (!pipe)
		goto fail_iput;

	inode->i_pipe = pipe;
	pipe->files = 2;
	pipe->readers = pipe->writers = 1;
	inode->i_fop = &pipefifo_fops;

	/*
	 * Mark the inode dirty from the very beginning,
	 * that way it will never be moved to the dirty
	 * list because "mark_inode_dirty()" will think
	 * that it already _is_ on the dirty list.
	 */
	inode->i_state = I_DIRTY;
	inode->i_mode = S_IFIFO | S_IRUSR | S_IWUSR;
	inode->i_uid = FUNC2();
	inode->i_gid = FUNC1();
	inode->i_atime = inode->i_mtime = inode->i_ctime = FUNC3(inode);

	return inode;

fail_iput:
	FUNC5(inode);

fail_inode:
	return NULL;
}