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
struct io_ring_ctx {TYPE_2__* ring_sock; } ;
struct file {int dummy; } ;
struct TYPE_5__ {TYPE_1__* sk; struct file* file; } ;
struct TYPE_4__ {struct io_ring_ctx* sk_user_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  IPPROTO_IP ; 
 scalar_t__ FUNC0 (struct file*) ; 
 int O_CLOEXEC ; 
 int O_RDWR ; 
 int /*<<< orphan*/  PF_UNIX ; 
 int FUNC1 (struct file*) ; 
 int /*<<< orphan*/  SOCK_RAW ; 
 struct file* FUNC2 (char*,int /*<<< orphan*/ *,struct io_ring_ctx*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,struct file*) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  init_net ; 
 int /*<<< orphan*/  io_uring_fops ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(struct io_ring_ctx *ctx)
{
	struct file *file;
	int ret;

#if defined(CONFIG_UNIX)
	ret = sock_create_kern(&init_net, PF_UNIX, SOCK_RAW, IPPROTO_IP,
				&ctx->ring_sock);
	if (ret)
		return ret;
#endif

	ret = FUNC4(O_RDWR | O_CLOEXEC);
	if (ret < 0)
		goto err;

	file = FUNC2("[io_uring]", &io_uring_fops, ctx,
					O_RDWR | O_CLOEXEC);
	if (FUNC0(file)) {
		FUNC5(ret);
		ret = FUNC1(file);
		goto err;
	}

#if defined(CONFIG_UNIX)
	ctx->ring_sock->file = file;
	ctx->ring_sock->sk->sk_user_data = ctx;
#endif
	FUNC3(ret, file);
	return ret;
err:
#if defined(CONFIG_UNIX)
	sock_release(ctx->ring_sock);
	ctx->ring_sock = NULL;
#endif
	return ret;
}