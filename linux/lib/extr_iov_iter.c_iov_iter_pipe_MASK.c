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
struct pipe_inode_info {int nrbufs; int buffers; int curbuf; } ;
struct iov_iter {unsigned int type; int idx; size_t count; int start_idx; scalar_t__ iov_offset; struct pipe_inode_info* pipe; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int ITER_PIPE ; 
 unsigned int READ ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

void FUNC2(struct iov_iter *i, unsigned int direction,
			struct pipe_inode_info *pipe,
			size_t count)
{
	FUNC0(direction != READ);
	FUNC1(pipe->nrbufs == pipe->buffers);
	i->type = ITER_PIPE | READ;
	i->pipe = pipe;
	i->idx = (pipe->curbuf + pipe->nrbufs) & (pipe->buffers - 1);
	i->iov_offset = 0;
	i->count = count;
	i->start_idx = i->idx;
}