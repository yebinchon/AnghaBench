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
struct TYPE_3__ {int /*<<< orphan*/  timer; } ;
struct io_kiocb {int /*<<< orphan*/  user_data; TYPE_2__* ctx; int /*<<< orphan*/  list; TYPE_1__ timeout; } ;
struct TYPE_4__ {int /*<<< orphan*/  cq_timeouts; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct io_kiocb*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct io_kiocb *req)
{
	int ret;

	ret = FUNC2(&req->timeout.timer);
	if (ret != -1) {
		FUNC1(&req->ctx->cq_timeouts);
		FUNC4(&req->list);
		FUNC3(req->ctx, req->user_data, 0);
		FUNC0(req);
	}
}