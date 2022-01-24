#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;
struct eventfd_ctx {scalar_t__ count; TYPE_1__ wqh; } ;
typedef  scalar_t__ __u64 ;

/* Variables and functions */
 int /*<<< orphan*/  EPOLLIN ; 
 scalar_t__ ULLONG_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__u64 FUNC4(struct eventfd_ctx *ctx, __u64 n)
{
	unsigned long flags;

	FUNC0(&ctx->wqh.lock, flags);
	if (ULLONG_MAX - ctx->count < n)
		n = ULLONG_MAX - ctx->count;
	ctx->count += n;
	if (FUNC2(&ctx->wqh))
		FUNC3(&ctx->wqh, EPOLLIN);
	FUNC1(&ctx->wqh.lock, flags);

	return n;
}