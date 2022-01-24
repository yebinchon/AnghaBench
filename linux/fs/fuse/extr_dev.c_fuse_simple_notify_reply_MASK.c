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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_3__ {int /*<<< orphan*/  unique; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ in; int /*<<< orphan*/  flags; } ;
struct fuse_iqueue {int /*<<< orphan*/  lock; scalar_t__ connected; } ;
struct fuse_conn {struct fuse_iqueue iq; } ;
struct fuse_args {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FR_ISREPLY ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct fuse_req*,struct fuse_args*) ; 
 struct fuse_req* FUNC4 (struct fuse_conn*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_iqueue*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(struct fuse_conn *fc,
				    struct fuse_args *args, u64 unique)
{
	struct fuse_req *req;
	struct fuse_iqueue *fiq = &fc->iq;
	int err = 0;

	req = FUNC4(fc, false);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC2(FR_ISREPLY, &req->flags);
	req->in.h.unique = unique;

	FUNC3(req, args);

	FUNC7(&fiq->lock);
	if (fiq->connected) {
		FUNC6(fiq, req);
	} else {
		err = -ENODEV;
		FUNC8(&fiq->lock);
		FUNC5(fc, req);
	}

	return err;
}