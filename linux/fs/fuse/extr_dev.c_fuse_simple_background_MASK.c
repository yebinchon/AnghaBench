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
struct fuse_req {int /*<<< orphan*/  flags; } ;
struct fuse_conn {int dummy; } ;
struct fuse_args {int nocreds; scalar_t__ force; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int ENOMEM ; 
 int ENOTCONN ; 
 int /*<<< orphan*/  FR_BACKGROUND ; 
 scalar_t__ FUNC0 (struct fuse_req*) ; 
 int FUNC1 (struct fuse_req*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct fuse_req*,struct fuse_args*) ; 
 struct fuse_req* FUNC5 (struct fuse_conn*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct fuse_conn*,struct fuse_req*) ; 
 struct fuse_req* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct fuse_conn*,struct fuse_req*) ; 

int FUNC9(struct fuse_conn *fc, struct fuse_args *args,
			    gfp_t gfp_flags)
{
	struct fuse_req *req;

	if (args->force) {
		FUNC2(!args->nocreds);
		req = FUNC7(gfp_flags);
		if (!req)
			return -ENOMEM;
		FUNC3(FR_BACKGROUND, &req->flags);
	} else {
		FUNC2(args->nocreds);
		req = FUNC5(fc, true);
		if (FUNC0(req))
			return FUNC1(req);
	}

	FUNC4(req, args);

	if (!FUNC8(fc, req)) {
		FUNC6(fc, req);
		return -ENOTCONN;
	}

	return 0;
}