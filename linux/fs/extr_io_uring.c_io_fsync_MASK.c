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
struct io_uring_sqe {int /*<<< orphan*/  user_data; int /*<<< orphan*/  fsync_flags; int /*<<< orphan*/  len; int /*<<< orphan*/  off; } ;
struct TYPE_2__ {int /*<<< orphan*/  ki_filp; } ;
struct io_kiocb {int flags; int /*<<< orphan*/  ctx; TYPE_1__ rw; } ;
typedef  scalar_t__ loff_t ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 unsigned int IORING_FSYNC_DATASYNC ; 
 scalar_t__ LLONG_MAX ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int REQ_F_FAIL_LINK ; 
 int REQ_F_LINK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (struct io_kiocb*,struct io_uring_sqe const*) ; 
 int /*<<< orphan*/  FUNC3 (struct io_kiocb*) ; 
 scalar_t__ FUNC4 (unsigned int) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,unsigned int) ; 

__attribute__((used)) static int FUNC6(struct io_kiocb *req, const struct io_uring_sqe *sqe,
		    bool force_nonblock)
{
	loff_t sqe_off = FUNC0(sqe->off);
	loff_t sqe_len = FUNC0(sqe->len);
	loff_t end = sqe_off + sqe_len;
	unsigned fsync_flags;
	int ret;

	fsync_flags = FUNC0(sqe->fsync_flags);
	if (FUNC4(fsync_flags & ~IORING_FSYNC_DATASYNC))
		return -EINVAL;

	ret = FUNC2(req, sqe);
	if (ret)
		return ret;

	/* fsync always requires a blocking context */
	if (force_nonblock)
		return -EAGAIN;

	ret = FUNC5(req->rw.ki_filp, sqe_off,
				end > 0 ? end : LLONG_MAX,
				fsync_flags & IORING_FSYNC_DATASYNC);

	if (ret < 0 && (req->flags & REQ_F_LINK))
		req->flags |= REQ_F_FAIL_LINK;
	FUNC1(req->ctx, sqe->user_data, ret);
	FUNC3(req);
	return 0;
}