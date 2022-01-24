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
struct pipe_inode_info {scalar_t__ nrbufs; scalar_t__ buffers; int /*<<< orphan*/  waiting_writers; int /*<<< orphan*/  readers; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EPIPE ; 
 int ERESTARTSYS ; 
 int /*<<< orphan*/  SIGPIPE ; 
 unsigned int SPLICE_F_NONBLOCK ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct pipe_inode_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct pipe_inode_info *pipe, unsigned flags)
{
	for (;;) {
		if (FUNC3(!pipe->readers)) {
			FUNC1(SIGPIPE, current, 0);
			return -EPIPE;
		}
		if (pipe->nrbufs != pipe->buffers)
			return 0;
		if (flags & SPLICE_F_NONBLOCK)
			return -EAGAIN;
		if (FUNC2(current))
			return -ERESTARTSYS;
		pipe->waiting_writers++;
		FUNC0(pipe);
		pipe->waiting_writers--;
	}
}