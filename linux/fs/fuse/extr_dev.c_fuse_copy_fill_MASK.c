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
struct pipe_buffer {size_t offset; int len; struct page* page; } ;
struct page {int dummy; } ;
struct fuse_copy_state {scalar_t__ nr_segs; size_t offset; int len; int /*<<< orphan*/  req; int /*<<< orphan*/  iter; struct page* pg; struct pipe_buffer* pipebufs; struct pipe_buffer* currbuf; TYPE_1__* pipe; int /*<<< orphan*/  write; } ;
struct TYPE_2__ {scalar_t__ buffers; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_HIGHUSER ; 
 int PAGE_SIZE ; 
 struct page* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_copy_state*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,struct page**,int,int,size_t*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_1__*,struct pipe_buffer*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct fuse_copy_state *cs)
{
	struct page *page;
	int err;

	err = FUNC7(cs->req);
	if (err)
		return err;

	FUNC2(cs);
	if (cs->pipebufs) {
		struct pipe_buffer *buf = cs->pipebufs;

		if (!cs->write) {
			err = FUNC6(cs->pipe, buf);
			if (err)
				return err;

			FUNC0(!cs->nr_segs);
			cs->currbuf = buf;
			cs->pg = buf->page;
			cs->offset = buf->offset;
			cs->len = buf->len;
			cs->pipebufs++;
			cs->nr_segs--;
		} else {
			if (cs->nr_segs == cs->pipe->buffers)
				return -EIO;

			page = FUNC1(GFP_HIGHUSER);
			if (!page)
				return -ENOMEM;

			buf->page = page;
			buf->offset = 0;
			buf->len = 0;

			cs->currbuf = buf;
			cs->pg = page;
			cs->offset = 0;
			cs->len = PAGE_SIZE;
			cs->pipebufs++;
			cs->nr_segs++;
		}
	} else {
		size_t off;
		err = FUNC4(cs->iter, &page, PAGE_SIZE, 1, &off);
		if (err < 0)
			return err;
		FUNC0(!err);
		cs->len = err;
		cs->offset = off;
		cs->pg = page;
		FUNC3(cs->iter, err);
	}

	return FUNC5(cs->req);
}