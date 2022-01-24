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
struct aio_kiocb {TYPE_1__* ki_ctx; scalar_t__ ki_filp; scalar_t__ ki_eventfd; } ;
struct TYPE_2__ {int /*<<< orphan*/  reqs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  kiocb_cachep ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,struct aio_kiocb*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC4(struct aio_kiocb *iocb)
{
	if (iocb->ki_eventfd)
		FUNC0(iocb->ki_eventfd);
	if (iocb->ki_filp)
		FUNC1(iocb->ki_filp);
	FUNC3(&iocb->ki_ctx->reqs);
	FUNC2(kiocb_cachep, iocb);
}