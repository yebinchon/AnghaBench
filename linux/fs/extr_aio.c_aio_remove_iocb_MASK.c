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
struct kioctx {int /*<<< orphan*/  ctx_lock; } ;
struct aio_kiocb {int /*<<< orphan*/  ki_list; struct kioctx* ki_ctx; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct aio_kiocb *iocb)
{
	struct kioctx *ctx = iocb->ki_ctx;
	unsigned long flags;

	FUNC1(&ctx->ctx_lock, flags);
	FUNC0(&iocb->ki_list);
	FUNC2(&ctx->ctx_lock, flags);
}