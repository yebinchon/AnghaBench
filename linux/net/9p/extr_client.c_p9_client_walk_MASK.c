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
typedef  size_t uint16_t ;
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_qid {size_t type; unsigned char const* const version; scalar_t__ path; } ;
struct p9_fid {size_t fid; int /*<<< orphan*/  qid; int /*<<< orphan*/  uid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOMEM ; 
 struct p9_fid* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TWALK ; 
 int FUNC2 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_qid*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,struct p9_qid*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_fid*) ; 
 struct p9_req_t* FUNC6 (struct p9_client*,int /*<<< orphan*/ ,char*,size_t,size_t,size_t,unsigned char const* const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,size_t,...) ; 
 struct p9_fid* FUNC8 (struct p9_client*) ; 
 int /*<<< orphan*/  FUNC9 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC10 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,size_t*,struct p9_qid**) ; 
 int /*<<< orphan*/  FUNC12 (struct p9_client*,int /*<<< orphan*/ *) ; 

struct p9_fid *FUNC13(struct p9_fid *oldfid, uint16_t nwname,
		const unsigned char * const *wnames, int clone)
{
	int err;
	struct p9_client *clnt;
	struct p9_fid *fid;
	struct p9_qid *wqids;
	struct p9_req_t *req;
	uint16_t nwqids, count;

	err = 0;
	wqids = NULL;
	clnt = oldfid->clnt;
	if (clone) {
		fid = FUNC8(clnt);
		if (!fid) {
			err = -ENOMEM;
			goto error;
		}

		fid->uid = oldfid->uid;
	} else
		fid = oldfid;


	FUNC7(P9_DEBUG_9P, ">>> TWALK fids %d,%d nwname %ud wname[0] %s\n",
		 oldfid->fid, fid->fid, nwname, wnames ? wnames[0] : NULL);

	req = FUNC6(clnt, P9_TWALK, "ddT", oldfid->fid, fid->fid,
								nwname, wnames);
	if (FUNC1(req)) {
		err = FUNC2(req);
		goto error;
	}

	err = FUNC11(&req->rc, clnt->proto_version, "R", &nwqids, &wqids);
	if (err) {
		FUNC12(clnt, &req->rc);
		FUNC10(clnt, req);
		goto clunk_fid;
	}
	FUNC10(clnt, req);

	FUNC7(P9_DEBUG_9P, "<<< RWALK nwqid %d:\n", nwqids);

	if (nwqids != nwname) {
		err = -ENOENT;
		goto clunk_fid;
	}

	for (count = 0; count < nwqids; count++)
		FUNC7(P9_DEBUG_9P, "<<<     [%d] %x.%llx.%x\n",
			count, wqids[count].type,
			(unsigned long long)wqids[count].path,
			wqids[count].version);

	if (nwname)
		FUNC4(&fid->qid, &wqids[nwqids - 1], sizeof(struct p9_qid));
	else
		fid->qid = oldfid->qid;

	FUNC3(wqids);
	return fid;

clunk_fid:
	FUNC3(wqids);
	FUNC5(fid);
	fid = NULL;

error:
	if (fid && (fid != oldfid))
		FUNC9(fid);

	return FUNC0(err);
}