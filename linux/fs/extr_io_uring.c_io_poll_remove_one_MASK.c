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
struct TYPE_3__ {int /*<<< orphan*/  entry; } ;
struct io_poll_iocb {TYPE_2__* head; TYPE_1__ wait; int /*<<< orphan*/  canceled; } ;
struct io_kiocb {int /*<<< orphan*/  list; int /*<<< orphan*/  ctx; struct io_poll_iocb poll; } ;
struct TYPE_4__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct io_kiocb*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC6(struct io_kiocb *req)
{
	struct io_poll_iocb *poll = &req->poll;

	FUNC4(&poll->head->lock);
	FUNC0(poll->canceled, true);
	if (!FUNC3(&poll->wait.entry)) {
		FUNC2(&poll->wait.entry);
		FUNC1(req->ctx, req);
	}
	FUNC5(&poll->head->lock);

	FUNC2(&req->list);
}