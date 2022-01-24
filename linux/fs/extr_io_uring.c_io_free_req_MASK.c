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
struct io_kiocb {int flags; } ;

/* Variables and functions */
 int REQ_F_FAIL_LINK ; 
 int REQ_F_LINK ; 
 int /*<<< orphan*/  FUNC0 (struct io_kiocb*) ; 
 int /*<<< orphan*/  FUNC1 (struct io_kiocb*) ; 
 int /*<<< orphan*/  FUNC2 (struct io_kiocb*) ; 

__attribute__((used)) static void FUNC3(struct io_kiocb *req)
{
	/*
	 * If LINK is set, we have dependent requests in this chain. If we
	 * didn't fail this request, queue the first one up, moving any other
	 * dependencies to the next request. In case of failure, fail the rest
	 * of the chain.
	 */
	if (req->flags & REQ_F_LINK) {
		if (req->flags & REQ_F_FAIL_LINK)
			FUNC1(req);
		else
			FUNC2(req);
	}

	FUNC0(req);
}