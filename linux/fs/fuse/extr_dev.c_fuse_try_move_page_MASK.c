#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct pipe_buffer {scalar_t__ len; int flags; int /*<<< orphan*/  offset; struct page* page; } ;
struct page {int dummy; } ;
struct fuse_copy_state {scalar_t__ len; TYPE_2__* req; int /*<<< orphan*/  offset; struct page* pg; int /*<<< orphan*/  pipe; int /*<<< orphan*/  nr_segs; struct pipe_buffer* pipebufs; struct pipe_buffer* currbuf; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {TYPE_1__ waitq; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int ENOENT ; 
 int /*<<< orphan*/  FR_ABORTED ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ PAGE_SIZE ; 
 int PIPE_BUF_FLAG_LRU ; 
 scalar_t__ FUNC2 (struct page*) ; 
 int FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 scalar_t__ FUNC5 (struct page*) ; 
 int /*<<< orphan*/  FUNC6 (struct page*) ; 
 scalar_t__ FUNC7 (int) ; 
 scalar_t__ FUNC8 (struct page*) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_copy_state*) ; 
 int /*<<< orphan*/  FUNC10 (struct page*) ; 
 int FUNC11 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (struct page*) ; 
 int FUNC13 (struct page*) ; 
 int FUNC14 (struct page*) ; 
 int FUNC15 (int /*<<< orphan*/ ,struct pipe_buffer*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,struct pipe_buffer*) ; 
 int /*<<< orphan*/  FUNC17 (struct page*) ; 
 int FUNC18 (struct page*,struct page*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC22 (struct page*) ; 
 int FUNC23 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC24(struct fuse_copy_state *cs, struct page **pagep)
{
	int err;
	struct page *oldpage = *pagep;
	struct page *newpage;
	struct pipe_buffer *buf = cs->pipebufs;

	err = FUNC23(cs->req);
	if (err)
		return err;

	FUNC9(cs);

	err = FUNC15(cs->pipe, buf);
	if (err)
		return err;

	FUNC0(!cs->nr_segs);
	cs->currbuf = buf;
	cs->len = buf->len;
	cs->pipebufs++;
	cs->nr_segs--;

	if (cs->len != PAGE_SIZE)
		goto out_fallback;

	if (FUNC16(cs->pipe, buf) != 0)
		goto out_fallback;

	newpage = buf->page;

	if (!FUNC4(newpage))
		FUNC6(newpage);

	FUNC1(newpage);

	if (FUNC8(newpage) != 0)
		goto out_fallback_unlock;

	/*
	 * This is a new and locked page, it shouldn't be mapped or
	 * have any special flags on it
	 */
	if (FUNC7(FUNC14(oldpage)))
		goto out_fallback_unlock;
	if (FUNC7(FUNC13(oldpage)))
		goto out_fallback_unlock;
	if (FUNC7(FUNC2(oldpage) || FUNC5(oldpage)))
		goto out_fallback_unlock;
	if (FUNC7(FUNC3(oldpage)))
		goto out_fallback_unlock;

	err = FUNC18(oldpage, newpage, GFP_KERNEL);
	if (err) {
		FUNC22(newpage);
		return err;
	}

	FUNC10(newpage);

	if (!(buf->flags & PIPE_BUF_FLAG_LRU))
		FUNC12(newpage);

	err = 0;
	FUNC19(&cs->req->waitq.lock);
	if (FUNC21(FR_ABORTED, &cs->req->flags))
		err = -ENOENT;
	else
		*pagep = newpage;
	FUNC20(&cs->req->waitq.lock);

	if (err) {
		FUNC22(newpage);
		FUNC17(newpage);
		return err;
	}

	FUNC22(oldpage);
	FUNC17(oldpage);
	cs->len = 0;

	return 0;

out_fallback_unlock:
	FUNC22(newpage);
out_fallback:
	cs->pg = buf->page;
	cs->offset = buf->offset;

	err = FUNC11(cs->req);
	if (err)
		return err;

	return 1;
}