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
typedef  int u32 ;
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_qid {int /*<<< orphan*/  version; scalar_t__ path; int /*<<< orphan*/  type; } ;
struct p9_fid {int mode; int iounit; int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;
typedef  int /*<<< orphan*/  kgid_t ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TLCREATE ; 
 int FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct p9_req_t* FUNC3 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct p9_qid*,int*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_client*,int /*<<< orphan*/ *) ; 

int FUNC8(struct p9_fid *ofid, const char *name, u32 flags, u32 mode,
		kgid_t gid, struct p9_qid *qid)
{
	int err = 0;
	struct p9_client *clnt;
	struct p9_req_t *req;
	int iounit;

	FUNC4(P9_DEBUG_9P,
			">>> TLCREATE fid %d name %s flags %d mode %d gid %d\n",
			ofid->fid, name, flags, mode,
		 	FUNC2(&init_user_ns, gid));
	clnt = ofid->clnt;

	if (ofid->mode != -1)
		return -EINVAL;

	req = FUNC3(clnt, P9_TLCREATE, "dsddg", ofid->fid, name, flags,
			mode, gid);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto error;
	}

	err = FUNC6(&req->rc, clnt->proto_version, "Qd", qid, &iounit);
	if (err) {
		FUNC7(clnt, &req->rc);
		goto free_and_error;
	}

	FUNC4(P9_DEBUG_9P, "<<< RLCREATE qid %x.%llx.%x iounit %x\n",
			qid->type,
			(unsigned long long)qid->path,
			qid->version, iounit);

	ofid->mode = mode;
	ofid->iounit = iounit;

free_and_error:
	FUNC5(clnt, req);
error:
	return err;
}