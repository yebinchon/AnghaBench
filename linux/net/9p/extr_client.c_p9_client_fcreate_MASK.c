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
typedef  int /*<<< orphan*/  u32 ;
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_qid {int /*<<< orphan*/  version; scalar_t__ path; int /*<<< orphan*/  type; } ;
struct p9_fid {int mode; int iounit; int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TCREATE ; 
 int FUNC1 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC2 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct p9_qid*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*,int /*<<< orphan*/ *) ; 

int FUNC7(struct p9_fid *fid, const char *name, u32 perm, int mode,
		     char *extension)
{
	int err;
	struct p9_client *clnt;
	struct p9_req_t *req;
	struct p9_qid qid;
	int iounit;

	FUNC3(P9_DEBUG_9P, ">>> TCREATE fid %d name %s perm %d mode %d\n",
						fid->fid, name, perm, mode);
	err = 0;
	clnt = fid->clnt;

	if (fid->mode != -1)
		return -EINVAL;

	req = FUNC2(clnt, P9_TCREATE, "dsdb?s", fid->fid, name, perm,
				mode, extension);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto error;
	}

	err = FUNC5(&req->rc, clnt->proto_version, "Qd", &qid, &iounit);
	if (err) {
		FUNC6(clnt, &req->rc);
		goto free_and_error;
	}

	FUNC3(P9_DEBUG_9P, "<<< RCREATE qid %x.%llx.%x iounit %x\n",
				qid.type,
				(unsigned long long)qid.path,
				qid.version, iounit);

	fid->mode = mode;
	fid->iounit = iounit;

free_and_error:
	FUNC4(clnt, req);
error:
	return err;
}