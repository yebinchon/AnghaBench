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
struct pipe_inode_info {int /*<<< orphan*/  files; } ;
struct inode {int /*<<< orphan*/  i_lock; int /*<<< orphan*/ * i_pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct inode *inode, struct pipe_inode_info *pipe)
{
	int kill = 0;

	FUNC1(&inode->i_lock);
	if (!--pipe->files) {
		inode->i_pipe = NULL;
		kill = 1;
	}
	FUNC2(&inode->i_lock);

	if (kill)
		FUNC0(pipe);
}