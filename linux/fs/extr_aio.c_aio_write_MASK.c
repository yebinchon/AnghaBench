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
struct kiocb {int /*<<< orphan*/  ki_flags; int /*<<< orphan*/  ki_pos; struct file* ki_filp; } ;
struct iovec {int dummy; } ;
struct iov_iter {int dummy; } ;
struct iocb {int dummy; } ;
struct file {int f_mode; TYPE_1__* f_op; } ;
struct TYPE_4__ {int /*<<< orphan*/  i_sb; int /*<<< orphan*/  i_mode; } ;
struct TYPE_3__ {int /*<<< orphan*/  write_iter; } ;

/* Variables and functions */
 int EBADF ; 
 int EINVAL ; 
 int FMODE_WRITE ; 
 int /*<<< orphan*/  IOCB_WRITE ; 
 int /*<<< orphan*/  SB_FREEZE_WRITE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int UIO_FASTIOV ; 
 int /*<<< orphan*/  WRITE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct kiocb*,struct iocb const*) ; 
 int /*<<< orphan*/  FUNC4 (struct kiocb*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,struct iocb const*,struct iovec**,int,int,struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC6 (struct file*,struct kiocb*,struct iov_iter*) ; 
 TYPE_2__* FUNC7 (struct file*) ; 
 int /*<<< orphan*/  FUNC8 (struct iov_iter*) ; 
 int /*<<< orphan*/  FUNC9 (struct iovec*) ; 
 int FUNC10 (int /*<<< orphan*/ ,struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct kiocb *req, const struct iocb *iocb,
			 bool vectored, bool compat)
{
	struct iovec inline_vecs[UIO_FASTIOV], *iovec = inline_vecs;
	struct iov_iter iter;
	struct file *file;
	int ret;

	ret = FUNC3(req, iocb);
	if (ret)
		return ret;
	file = req->ki_filp;

	if (FUNC11(!(file->f_mode & FMODE_WRITE)))
		return -EBADF;
	if (FUNC11(!file->f_op->write_iter))
		return -EINVAL;

	ret = FUNC5(WRITE, iocb, &iovec, vectored, compat, &iter);
	if (ret < 0)
		return ret;
	ret = FUNC10(WRITE, file, &req->ki_pos, FUNC8(&iter));
	if (!ret) {
		/*
		 * Open-code file_start_write here to grab freeze protection,
		 * which will be released by another thread in
		 * aio_complete_rw().  Fool lockdep by telling it the lock got
		 * released so that it doesn't complain about the held lock when
		 * we return to userspace.
		 */
		if (FUNC0(FUNC7(file)->i_mode)) {
			FUNC1(FUNC7(file)->i_sb, SB_FREEZE_WRITE, true);
			FUNC2(FUNC7(file)->i_sb, SB_FREEZE_WRITE);
		}
		req->ki_flags |= IOCB_WRITE;
		FUNC4(req, FUNC6(file, req, &iter));
	}
	FUNC9(iovec);
	return ret;
}