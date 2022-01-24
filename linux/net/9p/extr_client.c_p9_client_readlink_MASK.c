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
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_fid {char* fid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TREADLINK ; 
 int FUNC1 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC2 (struct p9_client*,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char**) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*,int /*<<< orphan*/ *) ; 

int FUNC7(struct p9_fid *fid, char **target)
{
	int err;
	struct p9_client *clnt;
	struct p9_req_t *req;

	err = 0;
	clnt = fid->clnt;
	FUNC3(P9_DEBUG_9P, ">>> TREADLINK fid %d\n", fid->fid);

	req = FUNC2(clnt, P9_TREADLINK, "d", fid->fid);
	if (FUNC0(req))
		return FUNC1(req);

	err = FUNC5(&req->rc, clnt->proto_version, "s", target);
	if (err) {
		FUNC6(clnt, &req->rc);
		goto error;
	}
	FUNC3(P9_DEBUG_9P, "<<< RREADLINK target %s\n", *target);
error:
	FUNC4(clnt, req);
	return err;
}