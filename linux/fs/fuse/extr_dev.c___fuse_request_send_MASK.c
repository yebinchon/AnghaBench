#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  unique; } ;
struct TYPE_8__ {TYPE_3__ h; } ;
struct TYPE_5__ {int /*<<< orphan*/  error; } ;
struct TYPE_6__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_4__ in; TYPE_2__ out; int /*<<< orphan*/  flags; } ;
struct fuse_iqueue {int /*<<< orphan*/  lock; int /*<<< orphan*/  connected; } ;
struct fuse_conn {struct fuse_iqueue iq; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOTCONN ; 
 int /*<<< orphan*/  FR_BACKGROUND ; 
 int /*<<< orphan*/  FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (struct fuse_iqueue*) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_iqueue*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct fuse_conn *fc, struct fuse_req *req)
{
	struct fuse_iqueue *fiq = &fc->iq;

	FUNC0(FUNC8(FR_BACKGROUND, &req->flags));
	FUNC6(&fiq->lock);
	if (!fiq->connected) {
		FUNC7(&fiq->lock);
		req->out.h.error = -ENOTCONN;
	} else {
		req->in.h.unique = FUNC2(fiq);
		/* acquire extra reference, since request is still needed
		   after fuse_request_end() */
		FUNC1(req);
		FUNC3(fiq, req);

		FUNC4(fc, req);
		/* Pairs with smp_wmb() in fuse_request_end() */
		FUNC5();
	}
}