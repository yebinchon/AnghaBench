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
struct splice_desc {int flags; int need_wakeup; scalar_t__ num_spliced; } ;
struct pipe_inode_info {int /*<<< orphan*/  waiting_writers; int /*<<< orphan*/  writers; int /*<<< orphan*/  nrbufs; } ;

/* Variables and functions */
 int EAGAIN ; 
 int ERESTARTSYS ; 
 int SPLICE_F_NONBLOCK ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (struct pipe_inode_info*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct pipe_inode_info*) ; 

__attribute__((used)) static int FUNC3(struct pipe_inode_info *pipe, struct splice_desc *sd)
{
	/*
	 * Check for signal early to make process killable when there are
	 * always buffers available
	 */
	if (FUNC1(current))
		return -ERESTARTSYS;

	while (!pipe->nrbufs) {
		if (!pipe->writers)
			return 0;

		if (!pipe->waiting_writers && sd->num_spliced)
			return 0;

		if (sd->flags & SPLICE_F_NONBLOCK)
			return -EAGAIN;

		if (FUNC1(current))
			return -ERESTARTSYS;

		if (sd->need_wakeup) {
			FUNC2(pipe);
			sd->need_wakeup = false;
		}

		FUNC0(pipe);
	}

	return 1;
}