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
struct pipe_inode_info {int /*<<< orphan*/  wait; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TASK_INTERRUPTIBLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC3 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  wait ; 

void FUNC6(struct pipe_inode_info *pipe)
{
	FUNC0(wait);

	/*
	 * Pipes are system-local resources, so sleeping on them
	 * is considered a noninteractive wait:
	 */
	FUNC4(&pipe->wait, &wait, TASK_INTERRUPTIBLE);
	FUNC3(pipe);
	FUNC5();
	FUNC1(&pipe->wait, &wait);
	FUNC2(pipe);
}