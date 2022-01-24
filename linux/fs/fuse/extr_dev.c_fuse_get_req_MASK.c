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
typedef  scalar_t__ uid_t ;
struct TYPE_3__ {scalar_t__ uid; scalar_t__ gid; int /*<<< orphan*/  pid; } ;
struct TYPE_4__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ in; int /*<<< orphan*/  flags; } ;
struct fuse_conn {int /*<<< orphan*/  pid_ns; int /*<<< orphan*/  user_ns; int /*<<< orphan*/  blocked_waitq; scalar_t__ conn_error; int /*<<< orphan*/  connected; int /*<<< orphan*/  num_waiting; } ;
typedef  scalar_t__ gid_t ;

/* Variables and functions */
 int ECONNREFUSED ; 
 int EINTR ; 
 int ENOMEM ; 
 int ENOTCONN ; 
 int EOVERFLOW ; 
 struct fuse_req* FUNC0 (int) ; 
 int /*<<< orphan*/  FR_BACKGROUND ; 
 int /*<<< orphan*/  FR_WAITING ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (struct fuse_conn*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_conn*) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_req* FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fuse_req *FUNC17(struct fuse_conn *fc, bool for_background)
{
	struct fuse_req *req;
	int err;
	FUNC2(&fc->num_waiting);

	if (FUNC7(fc, for_background)) {
		err = -EINTR;
		if (FUNC15(fc->blocked_waitq,
				!FUNC7(fc, for_background)))
			goto out;
	}
	/* Matches smp_wmb() in fuse_set_initialized() */
	FUNC12();

	err = -ENOTCONN;
	if (!fc->connected)
		goto out;

	err = -ECONNREFUSED;
	if (fc->conn_error)
		goto out;

	req = FUNC10(GFP_KERNEL);
	err = -ENOMEM;
	if (!req) {
		if (for_background)
			FUNC16(&fc->blocked_waitq);
		goto out;
	}

	req->in.h.uid = FUNC6(fc->user_ns, FUNC4());
	req->in.h.gid = FUNC5(fc->user_ns, FUNC3());
	req->in.h.pid = FUNC11(FUNC13(current), fc->pid_ns);

	FUNC1(FR_WAITING, &req->flags);
	if (for_background)
		FUNC1(FR_BACKGROUND, &req->flags);

	if (FUNC14(req->in.h.uid == ((uid_t)-1) ||
		     req->in.h.gid == ((gid_t)-1))) {
		FUNC9(fc, req);
		return FUNC0(-EOVERFLOW);
	}
	return req;

 out:
	FUNC8(fc);
	return FUNC0(err);
}