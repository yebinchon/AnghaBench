#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct sqe_submit {scalar_t__ index; scalar_t__ needs_lock; TYPE_1__* sqe; } ;
struct io_ring_ctx {scalar_t__ sq_entries; int flags; int /*<<< orphan*/  uring_lock; } ;
struct io_kiocb {int result; void* user_data; } ;
struct TYPE_8__ {int buf_index; int /*<<< orphan*/  opcode; int /*<<< orphan*/  user_data; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
#define  IORING_OP_FSYNC 139 
#define  IORING_OP_NOP 138 
#define  IORING_OP_POLL_ADD 137 
#define  IORING_OP_POLL_REMOVE 136 
#define  IORING_OP_READV 135 
#define  IORING_OP_READ_FIXED 134 
#define  IORING_OP_RECVMSG 133 
#define  IORING_OP_SENDMSG 132 
#define  IORING_OP_SYNC_FILE_RANGE 131 
#define  IORING_OP_TIMEOUT 130 
#define  IORING_OP_WRITEV 129 
#define  IORING_OP_WRITE_FIXED 128 
 int IORING_SETUP_IOPOLL ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (struct io_kiocb*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct io_kiocb*) ; 
 int FUNC3 (struct io_kiocb*,void*) ; 
 int FUNC4 (struct io_kiocb*,TYPE_1__*) ; 
 int FUNC5 (struct io_kiocb*,TYPE_1__*) ; 
 int FUNC6 (struct io_kiocb*,struct sqe_submit const*,int) ; 
 int FUNC7 (struct io_kiocb*,TYPE_1__*,int) ; 
 int FUNC8 (struct io_kiocb*,TYPE_1__*,int) ; 
 int FUNC9 (struct io_kiocb*,TYPE_1__*,int) ; 
 int FUNC10 (struct io_kiocb*,TYPE_1__*) ; 
 int FUNC11 (struct io_kiocb*,struct sqe_submit const*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int) ; 

__attribute__((used)) static int FUNC15(struct io_ring_ctx *ctx, struct io_kiocb *req,
			   const struct sqe_submit *s, bool force_nonblock)
{
	int ret, opcode;

	req->user_data = FUNC0(s->sqe->user_data);

	if (FUNC14(s->index >= ctx->sq_entries))
		return -EINVAL;

	opcode = FUNC0(s->sqe->opcode);
	switch (opcode) {
	case IORING_OP_NOP:
		ret = FUNC3(req, req->user_data);
		break;
	case IORING_OP_READV:
		if (FUNC14(s->sqe->buf_index))
			return -EINVAL;
		ret = FUNC6(req, s, force_nonblock);
		break;
	case IORING_OP_WRITEV:
		if (FUNC14(s->sqe->buf_index))
			return -EINVAL;
		ret = FUNC11(req, s, force_nonblock);
		break;
	case IORING_OP_READ_FIXED:
		ret = FUNC6(req, s, force_nonblock);
		break;
	case IORING_OP_WRITE_FIXED:
		ret = FUNC11(req, s, force_nonblock);
		break;
	case IORING_OP_FSYNC:
		ret = FUNC1(req, s->sqe, force_nonblock);
		break;
	case IORING_OP_POLL_ADD:
		ret = FUNC4(req, s->sqe);
		break;
	case IORING_OP_POLL_REMOVE:
		ret = FUNC5(req, s->sqe);
		break;
	case IORING_OP_SYNC_FILE_RANGE:
		ret = FUNC9(req, s->sqe, force_nonblock);
		break;
	case IORING_OP_SENDMSG:
		ret = FUNC8(req, s->sqe, force_nonblock);
		break;
	case IORING_OP_RECVMSG:
		ret = FUNC7(req, s->sqe, force_nonblock);
		break;
	case IORING_OP_TIMEOUT:
		ret = FUNC10(req, s->sqe);
		break;
	default:
		ret = -EINVAL;
		break;
	}

	if (ret)
		return ret;

	if (ctx->flags & IORING_SETUP_IOPOLL) {
		if (req->result == -EAGAIN)
			return -EAGAIN;

		/* workqueue context doesn't hold uring_lock, grab it now */
		if (s->needs_lock)
			FUNC12(&ctx->uring_lock);
		FUNC2(req);
		if (s->needs_lock)
			FUNC13(&ctx->uring_lock);
	}

	return 0;
}