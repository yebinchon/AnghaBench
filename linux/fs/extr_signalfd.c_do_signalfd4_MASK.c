#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct signalfd_ctx {void* sigmask; } ;
struct fd {TYPE_1__* file; } ;
typedef  void* sigset_t ;
struct TYPE_6__ {TYPE_2__* sighand; } ;
struct TYPE_5__ {int /*<<< orphan*/  signalfd_wqh; int /*<<< orphan*/  siglock; } ;
struct TYPE_4__ {int /*<<< orphan*/ * f_op; struct signalfd_ctx* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBADF ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDWR ; 
 int SFD_CLOEXEC ; 
 int SFD_NONBLOCK ; 
 int /*<<< orphan*/  SIGKILL ; 
 int /*<<< orphan*/  SIGSTOP ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,struct signalfd_ctx*,int) ; 
 TYPE_3__* current ; 
 struct fd FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct fd) ; 
 int /*<<< orphan*/  FUNC4 (struct signalfd_ctx*) ; 
 struct signalfd_ctx* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void**,int) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  signalfd_fops ; 
 int /*<<< orphan*/  FUNC8 (void**) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(int ufd, sigset_t *mask, int flags)
{
	struct signalfd_ctx *ctx;

	/* Check the SFD_* constants for consistency.  */
	FUNC0(SFD_CLOEXEC != O_CLOEXEC);
	FUNC0(SFD_NONBLOCK != O_NONBLOCK);

	if (flags & ~(SFD_CLOEXEC | SFD_NONBLOCK))
		return -EINVAL;

	FUNC6(mask, FUNC7(SIGKILL) | FUNC7(SIGSTOP));
	FUNC8(mask);

	if (ufd == -1) {
		ctx = FUNC5(sizeof(*ctx), GFP_KERNEL);
		if (!ctx)
			return -ENOMEM;

		ctx->sigmask = *mask;

		/*
		 * When we call this, the initialization must be complete, since
		 * anon_inode_getfd() will install the fd.
		 */
		ufd = FUNC1("[signalfd]", &signalfd_fops, ctx,
				       O_RDWR | (flags & (O_CLOEXEC | O_NONBLOCK)));
		if (ufd < 0)
			FUNC4(ctx);
	} else {
		struct fd f = FUNC2(ufd);
		if (!f.file)
			return -EBADF;
		ctx = f.file->private_data;
		if (f.file->f_op != &signalfd_fops) {
			FUNC3(f);
			return -EINVAL;
		}
		FUNC9(&current->sighand->siglock);
		ctx->sigmask = *mask;
		FUNC10(&current->sighand->siglock);

		FUNC11(&current->sighand->signalfd_wqh);
		FUNC3(f);
	}

	return ufd;
}