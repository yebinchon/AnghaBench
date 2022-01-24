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
struct p9_fid {int fid; int /*<<< orphan*/  qid; int /*<<< orphan*/  uid; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;
typedef  int /*<<< orphan*/  kuid_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct p9_fid* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int P9_NOFID ; 
 int /*<<< orphan*/  P9_TATTACH ; 
 int FUNC2 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct p9_qid*,int) ; 
 struct p9_req_t* FUNC4 (struct p9_client*,int /*<<< orphan*/ ,char*,int,int,char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,...) ; 
 struct p9_fid* FUNC6 (struct p9_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,struct p9_qid*) ; 
 int /*<<< orphan*/  FUNC10 (struct p9_client*,int /*<<< orphan*/ *) ; 

struct p9_fid *FUNC11(struct p9_client *clnt, struct p9_fid *afid,
	const char *uname, kuid_t n_uname, const char *aname)
{
	int err = 0;
	struct p9_req_t *req;
	struct p9_fid *fid;
	struct p9_qid qid;


	FUNC5(P9_DEBUG_9P, ">>> TATTACH afid %d uname %s aname %s\n",
		 afid ? afid->fid : -1, uname, aname);
	fid = FUNC6(clnt);
	if (!fid) {
		err = -ENOMEM;
		goto error;
	}
	fid->uid = n_uname;

	req = FUNC4(clnt, P9_TATTACH, "ddss?u", fid->fid,
			afid ? afid->fid : P9_NOFID, uname, aname, n_uname);
	if (FUNC1(req)) {
		err = FUNC2(req);
		goto error;
	}

	err = FUNC9(&req->rc, clnt->proto_version, "Q", &qid);
	if (err) {
		FUNC10(clnt, &req->rc);
		FUNC8(clnt, req);
		goto error;
	}

	FUNC5(P9_DEBUG_9P, "<<< RATTACH qid %x.%llx.%x\n",
		 qid.type, (unsigned long long)qid.path, qid.version);

	FUNC3(&fid->qid, &qid, sizeof(struct p9_qid));

	FUNC8(clnt, req);
	return fid;

error:
	if (fid)
		FUNC7(fid);
	return FUNC0(err);
}