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
typedef  int /*<<< orphan*/  u64 ;
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_fid {int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct p9_fid* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TXATTRWALK ; 
 int FUNC2 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC3 (struct p9_fid*) ; 
 struct p9_req_t* FUNC4 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 struct p9_fid* FUNC6 (struct p9_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC8 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct p9_client*,int /*<<< orphan*/ *) ; 

struct p9_fid *FUNC11(struct p9_fid *file_fid,
				const char *attr_name, u64 *attr_size)
{
	int err;
	struct p9_req_t *req;
	struct p9_client *clnt;
	struct p9_fid *attr_fid;

	err = 0;
	clnt = file_fid->clnt;
	attr_fid = FUNC6(clnt);
	if (!attr_fid) {
		err = -ENOMEM;
		goto error;
	}
	FUNC5(P9_DEBUG_9P,
		">>> TXATTRWALK file_fid %d, attr_fid %d name %s\n",
		file_fid->fid, attr_fid->fid, attr_name);

	req = FUNC4(clnt, P9_TXATTRWALK, "dds",
			file_fid->fid, attr_fid->fid, attr_name);
	if (FUNC1(req)) {
		err = FUNC2(req);
		goto error;
	}
	err = FUNC9(&req->rc, clnt->proto_version, "q", attr_size);
	if (err) {
		FUNC10(clnt, &req->rc);
		FUNC8(clnt, req);
		goto clunk_fid;
	}
	FUNC8(clnt, req);
	FUNC5(P9_DEBUG_9P, "<<<  RXATTRWALK fid %d size %llu\n",
		attr_fid->fid, *attr_size);
	return attr_fid;
clunk_fid:
	FUNC3(attr_fid);
	attr_fid = NULL;
error:
	if (attr_fid && (attr_fid != file_fid))
		FUNC7(attr_fid);

	return FUNC0(err);
}