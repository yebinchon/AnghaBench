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
struct pipe_buffer {unsigned int offset; unsigned int len; struct page* page; } ;
struct page {int dummy; } ;
struct fuse_copy_state {scalar_t__ nr_segs; scalar_t__ len; struct pipe_buffer* pipebufs; int /*<<< orphan*/  req; TYPE_1__* pipe; } ;
struct TYPE_2__ {scalar_t__ buffers; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_copy_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fuse_copy_state *cs, struct page *page,
			 unsigned offset, unsigned count)
{
	struct pipe_buffer *buf;
	int err;

	if (cs->nr_segs == cs->pipe->buffers)
		return -EIO;

	err = FUNC2(cs->req);
	if (err)
		return err;

	FUNC0(cs);

	buf = cs->pipebufs;
	FUNC1(page);
	buf->page = page;
	buf->offset = offset;
	buf->len = count;

	cs->pipebufs++;
	cs->nr_segs++;
	cs->len = 0;

	return 0;
}