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
struct eventfd_ctx {unsigned int count; int flags; int /*<<< orphan*/  id; int /*<<< orphan*/  wqh; int /*<<< orphan*/  kref; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ EFD_CLOEXEC ; 
 int EFD_FLAGS_SET ; 
 scalar_t__ EFD_NONBLOCK ; 
 int EFD_SHARED_FCNTL_FLAGS ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ O_CLOEXEC ; 
 scalar_t__ O_NONBLOCK ; 
 int O_RDWR ; 
 int FUNC1 (char*,int /*<<< orphan*/ *,struct eventfd_ctx*,int) ; 
 int /*<<< orphan*/  eventfd_fops ; 
 int /*<<< orphan*/  FUNC2 (struct eventfd_ctx*) ; 
 int /*<<< orphan*/  eventfd_ida ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 struct eventfd_ctx* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(unsigned int count, int flags)
{
	struct eventfd_ctx *ctx;
	int fd;

	/* Check the EFD_* constants for consistency.  */
	FUNC0(EFD_CLOEXEC != O_CLOEXEC);
	FUNC0(EFD_NONBLOCK != O_NONBLOCK);

	if (flags & ~EFD_FLAGS_SET)
		return -EINVAL;

	ctx = FUNC5(sizeof(*ctx), GFP_KERNEL);
	if (!ctx)
		return -ENOMEM;

	FUNC6(&ctx->kref);
	FUNC4(&ctx->wqh);
	ctx->count = count;
	ctx->flags = flags;
	ctx->id = FUNC3(&eventfd_ida, 0, 0, GFP_KERNEL);

	fd = FUNC1("[eventfd]", &eventfd_fops, ctx,
			      O_RDWR | (flags & EFD_SHARED_FCNTL_FLAGS));
	if (fd < 0)
		FUNC2(ctx);

	return fd;
}