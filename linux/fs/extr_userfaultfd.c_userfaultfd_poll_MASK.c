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
struct userfaultfd_ctx {int state; int /*<<< orphan*/  event_wqh; int /*<<< orphan*/  fault_pending_wqh; int /*<<< orphan*/  fd_wqh; } ;
struct file {int f_flags; struct userfaultfd_ctx* private_data; } ;
typedef  int /*<<< orphan*/  poll_table ;
typedef  int /*<<< orphan*/  __poll_t ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLERR ; 
 int /*<<< orphan*/  EPOLLIN ; 
 int O_NONBLOCK ; 
#define  UFFD_STATE_RUNNING 129 
#define  UFFD_STATE_WAIT_API 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct file*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static __poll_t FUNC5(struct file *file, poll_table *wait)
{
	struct userfaultfd_ctx *ctx = file->private_data;
	__poll_t ret;

	FUNC1(file, &ctx->fd_wqh, wait);

	switch (ctx->state) {
	case UFFD_STATE_WAIT_API:
		return EPOLLERR;
	case UFFD_STATE_RUNNING:
		/*
		 * poll() never guarantees that read won't block.
		 * userfaults can be waken before they're read().
		 */
		if (FUNC3(!(file->f_flags & O_NONBLOCK)))
			return EPOLLERR;
		/*
		 * lockless access to see if there are pending faults
		 * __pollwait last action is the add_wait_queue but
		 * the spin_unlock would allow the waitqueue_active to
		 * pass above the actual list_add inside
		 * add_wait_queue critical section. So use a full
		 * memory barrier to serialize the list_add write of
		 * add_wait_queue() with the waitqueue_active read
		 * below.
		 */
		ret = 0;
		FUNC2();
		if (FUNC4(&ctx->fault_pending_wqh))
			ret = EPOLLIN;
		else if (FUNC4(&ctx->event_wqh))
			ret = EPOLLIN;

		return ret;
	default:
		FUNC0(1);
		return EPOLLERR;
	}
}