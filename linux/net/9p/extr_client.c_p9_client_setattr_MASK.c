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
struct p9_req_t {int dummy; } ;
struct p9_iattr_dotl {int /*<<< orphan*/  mtime_nsec; int /*<<< orphan*/  mtime_sec; int /*<<< orphan*/  atime_nsec; int /*<<< orphan*/  atime_sec; int /*<<< orphan*/  size; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  mode; int /*<<< orphan*/  valid; } ;
struct p9_fid {int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TSETATTR ; 
 int FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct p9_req_t* FUNC4 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,struct p9_iattr_dotl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*,struct p9_req_t*) ; 

int FUNC7(struct p9_fid *fid, struct p9_iattr_dotl *p9attr)
{
	int err;
	struct p9_req_t *req;
	struct p9_client *clnt;

	err = 0;
	clnt = fid->clnt;
	FUNC5(P9_DEBUG_9P, ">>> TSETATTR fid %d\n", fid->fid);
	FUNC5(P9_DEBUG_9P,
		"    valid=%x mode=%x uid=%d gid=%d size=%lld\n"
		"    atime_sec=%lld atime_nsec=%lld\n"
		"    mtime_sec=%lld mtime_nsec=%lld\n",
		p9attr->valid, p9attr->mode,
		FUNC3(&init_user_ns, p9attr->uid),
		FUNC2(&init_user_ns, p9attr->gid),
		p9attr->size, p9attr->atime_sec, p9attr->atime_nsec,
		p9attr->mtime_sec, p9attr->mtime_nsec);

	req = FUNC4(clnt, P9_TSETATTR, "dI", fid->fid, p9attr);

	if (FUNC0(req)) {
		err = FUNC1(req);
		goto error;
	}
	FUNC5(P9_DEBUG_9P, "<<< RSETATTR fid %d\n", fid->fid);
	FUNC6(clnt, req);
error:
	return err;
}