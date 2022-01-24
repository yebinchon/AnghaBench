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

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TMKDIR ; 
 int FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct p9_req_t* FUNC3 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct p9_qid*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_client*,int /*<<< orphan*/ *) ; 

int FUNC8(struct p9_fid *fid, const char *name, int mode,
				kgid_t gid, struct p9_qid *qid)
{
	int err;
	struct p9_client *clnt;
	struct p9_req_t *req;

	err = 0;
	clnt = fid->clnt;
	FUNC4(P9_DEBUG_9P, ">>> TMKDIR fid %d name %s mode %d gid %d\n",
		 fid->fid, name, mode, FUNC2(&init_user_ns, gid));
	req = FUNC3(clnt, P9_TMKDIR, "dsdg", fid->fid, name, mode,
		gid);
	if (FUNC0(req))
		return FUNC1(req);

	err = FUNC6(&req->rc, clnt->proto_version, "Q", qid);
	if (err) {
		FUNC7(clnt, &req->rc);
		goto error;
	}
	FUNC4(P9_DEBUG_9P, "<<< RMKDIR qid %x.%llx.%x\n", qid->type,
				(unsigned long long)qid->path, qid->version);

error:
	FUNC5(clnt, req);
	return err;

}