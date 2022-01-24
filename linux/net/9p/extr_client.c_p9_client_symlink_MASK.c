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
 int /*<<< orphan*/  P9_TSYMLINK ; 
 int FUNC1 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC2 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct p9_qid*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*,int /*<<< orphan*/ *) ; 

int FUNC7(struct p9_fid *dfid, const char *name,
		const char *symtgt, kgid_t gid, struct p9_qid *qid)
{
	int err = 0;
	struct p9_client *clnt;
	struct p9_req_t *req;

	FUNC3(P9_DEBUG_9P, ">>> TSYMLINK dfid %d name %s  symtgt %s\n",
			dfid->fid, name, symtgt);
	clnt = dfid->clnt;

	req = FUNC2(clnt, P9_TSYMLINK, "dssg", dfid->fid, name, symtgt,
			gid);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto error;
	}

	err = FUNC5(&req->rc, clnt->proto_version, "Q", qid);
	if (err) {
		FUNC6(clnt, &req->rc);
		goto free_and_error;
	}

	FUNC3(P9_DEBUG_9P, "<<< RSYMLINK qid %x.%llx.%x\n",
			qid->type, (unsigned long long)qid->path, qid->version);

free_and_error:
	FUNC4(clnt, req);
error:
	return err;
}