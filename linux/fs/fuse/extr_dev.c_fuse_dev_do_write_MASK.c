#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct fuse_out_header {size_t len; int unique; int error; } ;
struct TYPE_3__ {struct fuse_out_header h; } ;
struct fuse_req {int /*<<< orphan*/  list; int /*<<< orphan*/  flags; TYPE_1__ out; TYPE_2__* args; } ;
struct fuse_pqueue {int /*<<< orphan*/  lock; scalar_t__ connected; int /*<<< orphan*/  io; } ;
struct fuse_dev {struct fuse_pqueue pq; struct fuse_conn* fc; } ;
struct fuse_copy_state {scalar_t__ move_pages; struct fuse_req* req; } ;
struct fuse_conn {int no_interrupt; int /*<<< orphan*/  iq; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  oh ;
struct TYPE_4__ {int /*<<< orphan*/  page_replace; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 int ENOENT ; 
 int ENOSYS ; 
 int /*<<< orphan*/  FR_LOCKED ; 
 int /*<<< orphan*/  FR_PRIVATE ; 
 int /*<<< orphan*/  FR_SENT ; 
 int FUSE_INT_REQ_BIT ; 
 int /*<<< orphan*/  FUNC0 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct fuse_copy_state*,TYPE_2__*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_copy_state*) ; 
 int FUNC4 (struct fuse_copy_state*,struct fuse_out_header*,int) ; 
 int FUNC5 (struct fuse_conn*,int,size_t,struct fuse_copy_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,struct fuse_req*) ; 
 struct fuse_req* FUNC11 (struct fuse_pqueue*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static ssize_t FUNC16(struct fuse_dev *fud,
				 struct fuse_copy_state *cs, size_t nbytes)
{
	int err;
	struct fuse_conn *fc = fud->fc;
	struct fuse_pqueue *fpq = &fud->pq;
	struct fuse_req *req;
	struct fuse_out_header oh;

	err = -EINVAL;
	if (nbytes < sizeof(struct fuse_out_header))
		goto out;

	err = FUNC4(cs, &oh, sizeof(oh));
	if (err)
		goto copy_finish;

	err = -EINVAL;
	if (oh.len != nbytes)
		goto copy_finish;

	/*
	 * Zero oh.unique indicates unsolicited notification message
	 * and error contains notification code.
	 */
	if (!oh.unique) {
		err = FUNC5(fc, oh.error, nbytes - sizeof(oh), cs);
		goto out;
	}

	err = -EINVAL;
	if (oh.error <= -1000 || oh.error > 0)
		goto copy_finish;

	FUNC13(&fpq->lock);
	req = NULL;
	if (fpq->connected)
		req = FUNC11(fpq, oh.unique & ~FUSE_INT_REQ_BIT);

	err = -ENOENT;
	if (!req) {
		FUNC14(&fpq->lock);
		goto copy_finish;
	}

	/* Is it an interrupt reply ID? */
	if (oh.unique & FUSE_INT_REQ_BIT) {
		FUNC0(req);
		FUNC14(&fpq->lock);

		err = 0;
		if (nbytes != sizeof(struct fuse_out_header))
			err = -EINVAL;
		else if (oh.error == -ENOSYS)
			fc->no_interrupt = 1;
		else if (oh.error == -EAGAIN)
			err = FUNC10(&fc->iq, req);

		FUNC6(fc, req);

		goto copy_finish;
	}

	FUNC1(FR_SENT, &req->flags);
	FUNC9(&req->list, &fpq->io);
	req->out.h = oh;
	FUNC12(FR_LOCKED, &req->flags);
	FUNC14(&fpq->lock);
	cs->req = req;
	if (!req->args->page_replace)
		cs->move_pages = 0;

	if (oh.error)
		err = nbytes != sizeof(oh) ? -EINVAL : 0;
	else
		err = FUNC2(cs, req->args, nbytes);
	FUNC3(cs);

	FUNC13(&fpq->lock);
	FUNC1(FR_LOCKED, &req->flags);
	if (!fpq->connected)
		err = -ENOENT;
	else if (err)
		req->out.h.error = -EIO;
	if (!FUNC15(FR_PRIVATE, &req->flags))
		FUNC8(&req->list);
	FUNC14(&fpq->lock);

	FUNC7(fc, req);
out:
	return err ? err : nbytes;

copy_finish:
	FUNC3(cs);
	goto out;
}