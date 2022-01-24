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
struct kiocb {int /*<<< orphan*/  ki_flags; int /*<<< orphan*/  ki_ioprio; int /*<<< orphan*/  ki_filp; int /*<<< orphan*/  ki_hint; int /*<<< orphan*/  ki_pos; int /*<<< orphan*/ * private; int /*<<< orphan*/  ki_complete; } ;
struct iocb {int aio_flags; int /*<<< orphan*/  aio_rw_flags; int /*<<< orphan*/  aio_reqprio; int /*<<< orphan*/  aio_offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  IOCB_EVENTFD ; 
 int IOCB_FLAG_IOPRIO ; 
 int IOCB_FLAG_RESFD ; 
 int /*<<< orphan*/  IOCB_HIPRI ; 
 int /*<<< orphan*/  aio_complete_rw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct kiocb*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,int) ; 
 scalar_t__ FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct kiocb *req, const struct iocb *iocb)
{
	int ret;

	req->ki_complete = aio_complete_rw;
	req->private = NULL;
	req->ki_pos = iocb->aio_offset;
	req->ki_flags = FUNC2(req->ki_filp);
	if (iocb->aio_flags & IOCB_FLAG_RESFD)
		req->ki_flags |= IOCB_EVENTFD;
	req->ki_hint = FUNC4(FUNC0(req->ki_filp));
	if (iocb->aio_flags & IOCB_FLAG_IOPRIO) {
		/*
		 * If the IOCB_FLAG_IOPRIO flag of aio_flags is set, then
		 * aio_reqprio is interpreted as an I/O scheduling
		 * class and priority.
		 */
		ret = FUNC3(iocb->aio_reqprio);
		if (ret) {
			FUNC6("aio ioprio check cap error: %d\n", ret);
			return ret;
		}

		req->ki_ioprio = iocb->aio_reqprio;
	} else
		req->ki_ioprio = FUNC1();

	ret = FUNC5(req, iocb->aio_rw_flags);
	if (FUNC7(ret))
		return ret;

	req->ki_flags &= ~IOCB_HIPRI; /* no one is going to poll for this I/O */
	return 0;
}