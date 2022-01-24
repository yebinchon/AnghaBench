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
struct p9_qid {int /*<<< orphan*/  version; scalar_t__ path; int /*<<< orphan*/  type; } ;
struct p9_fid {int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;
typedef  int /*<<< orphan*/  kgid_t ;
typedef  int /*<<< orphan*/  dev_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TMKNOD ; 
 int FUNC3 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC4 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct p9_qid*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_client*,int /*<<< orphan*/ *) ; 

int FUNC9(struct p9_fid *fid, const char *name, int mode,
			dev_t rdev, kgid_t gid, struct p9_qid *qid)
{
	int err;
	struct p9_client *clnt;
	struct p9_req_t *req;

	err = 0;
	clnt = fid->clnt;
	FUNC5(P9_DEBUG_9P, ">>> TMKNOD fid %d name %s mode %d major %d "
		"minor %d\n", fid->fid, name, mode, FUNC1(rdev), FUNC2(rdev));
	req = FUNC4(clnt, P9_TMKNOD, "dsdddg", fid->fid, name, mode,
		FUNC1(rdev), FUNC2(rdev), gid);
	if (FUNC0(req))
		return FUNC3(req);

	err = FUNC7(&req->rc, clnt->proto_version, "Q", qid);
	if (err) {
		FUNC8(clnt, &req->rc);
		goto error;
	}
	FUNC5(P9_DEBUG_9P, "<<< RMKNOD qid %x.%llx.%x\n", qid->type,
				(unsigned long long)qid->path, qid->version);

error:
	FUNC6(clnt, req);
	return err;

}