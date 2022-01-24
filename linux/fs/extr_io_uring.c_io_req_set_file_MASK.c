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
struct sqe_submit {scalar_t__ needs_fixed_file; TYPE_1__* sqe; int /*<<< orphan*/  sequence; } ;
struct io_submit_state {int dummy; } ;
struct io_ring_ctx {unsigned int nr_user_files; int /*<<< orphan*/ * user_files; } ;
struct io_kiocb {int /*<<< orphan*/  file; int /*<<< orphan*/  flags; int /*<<< orphan*/  sequence; } ;
struct TYPE_2__ {int /*<<< orphan*/  fd; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EBADF ; 
 unsigned int IOSQE_FIXED_FILE ; 
 unsigned int IOSQE_IO_DRAIN ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  REQ_F_FIXED_FILE ; 
 int /*<<< orphan*/  REQ_F_IO_DRAIN ; 
 int /*<<< orphan*/  FUNC1 (struct io_submit_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int FUNC4(struct io_ring_ctx *ctx, const struct sqe_submit *s,
			   struct io_submit_state *state, struct io_kiocb *req)
{
	unsigned flags;
	int fd;

	flags = FUNC0(s->sqe->flags);
	fd = FUNC0(s->sqe->fd);

	if (flags & IOSQE_IO_DRAIN)
		req->flags |= REQ_F_IO_DRAIN;
	/*
	 * All io need record the previous position, if LINK vs DARIN,
	 * it can be used to mark the position of the first IO in the
	 * link list.
	 */
	req->sequence = s->sequence;

	if (!FUNC2(s->sqe))
		return 0;

	if (flags & IOSQE_FIXED_FILE) {
		if (FUNC3(!ctx->user_files ||
		    (unsigned) fd >= ctx->nr_user_files))
			return -EBADF;
		req->file = ctx->user_files[fd];
		req->flags |= REQ_F_FIXED_FILE;
	} else {
		if (s->needs_fixed_file)
			return -EBADF;
		req->file = FUNC1(state, fd);
		if (FUNC3(!req->file))
			return -EBADF;
	}

	return 0;
}