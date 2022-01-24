#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ error; } ;
struct TYPE_5__ {TYPE_1__ h; } ;
struct fuse_req {TYPE_2__ out; int /*<<< orphan*/  flags; } ;
struct fuse_conn {int /*<<< orphan*/  num_waiting; } ;
struct fuse_args {int out_numargs; TYPE_3__* out_args; scalar_t__ out_argvar; int /*<<< orphan*/  noreply; int /*<<< orphan*/  nocreds; scalar_t__ force; } ;
typedef  scalar_t__ ssize_t ;
struct TYPE_6__ {scalar_t__ size; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FR_FORCE ; 
 int /*<<< orphan*/  FR_ISREPLY ; 
 int /*<<< orphan*/  FR_WAITING ; 
 int GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct fuse_req*) ; 
 scalar_t__ FUNC2 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int __GFP_NOFAIL ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_conn*,struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct fuse_conn*,struct fuse_args*) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_req*,struct fuse_args*) ; 
 int /*<<< orphan*/  FUNC9 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_req* FUNC10 (struct fuse_conn*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_req* FUNC12 (int) ; 

ssize_t FUNC13(struct fuse_conn *fc, struct fuse_args *args)
{
	struct fuse_req *req;
	ssize_t ret;

	if (args->force) {
		FUNC6(&fc->num_waiting);
		req = FUNC12(GFP_KERNEL | __GFP_NOFAIL);

		if (!args->nocreds)
			FUNC9(fc, req);

		FUNC5(FR_WAITING, &req->flags);
		FUNC5(FR_FORCE, &req->flags);
	} else {
		FUNC3(args->nocreds);
		req = FUNC10(fc, false);
		if (FUNC1(req))
			return FUNC2(req);
	}

	/* Needs to be done after fuse_get_req() so that fc->minor is valid */
	FUNC7(fc, args);
	FUNC8(req, args);

	if (!args->noreply)
		FUNC5(FR_ISREPLY, &req->flags);
	FUNC4(fc, req);
	ret = req->out.h.error;
	if (!ret && args->out_argvar) {
		FUNC0(args->out_numargs == 0);
		ret = args->out_args[args->out_numargs - 1].size;
	}
	FUNC11(fc, req);

	return ret;
}