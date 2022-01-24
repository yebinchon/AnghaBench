#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  version; scalar_t__ path; int /*<<< orphan*/  type; } ;
struct p9_wstat {int /*<<< orphan*/  size; int /*<<< orphan*/  n_muid; int /*<<< orphan*/  n_gid; int /*<<< orphan*/  n_uid; int /*<<< orphan*/  extension; int /*<<< orphan*/  muid; int /*<<< orphan*/  gid; int /*<<< orphan*/  uid; int /*<<< orphan*/  name; scalar_t__ length; int /*<<< orphan*/  mtime; int /*<<< orphan*/  atime; int /*<<< orphan*/  mode; TYPE_1__ qid; int /*<<< orphan*/  dev; int /*<<< orphan*/  type; } ;
struct p9_req_t {int dummy; } ;
struct p9_fid {int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TWSTAT ; 
 int FUNC1 (struct p9_req_t*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 struct p9_req_t* FUNC4 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct p9_wstat*) ; 
 int /*<<< orphan*/  FUNC5 (struct p9_wstat*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC7 (struct p9_client*,struct p9_req_t*) ; 

int FUNC8(struct p9_fid *fid, struct p9_wstat *wst)
{
	int err;
	struct p9_req_t *req;
	struct p9_client *clnt;

	err = 0;
	clnt = fid->clnt;
	wst->size = FUNC5(wst, clnt->proto_version);
	FUNC6(P9_DEBUG_9P, ">>> TWSTAT fid %d\n", fid->fid);
	FUNC6(P9_DEBUG_9P,
		"     sz=%x type=%x dev=%x qid=%x.%llx.%x\n"
		"     mode=%8.8x atime=%8.8x mtime=%8.8x length=%llx\n"
		"     name=%s uid=%s gid=%s muid=%s extension=(%s)\n"
		"     uid=%d gid=%d n_muid=%d\n",
		wst->size, wst->type, wst->dev, wst->qid.type,
		(unsigned long long)wst->qid.path, wst->qid.version, wst->mode,
		wst->atime, wst->mtime, (unsigned long long)wst->length,
		wst->name, wst->uid, wst->gid, wst->muid, wst->extension,
		FUNC3(&init_user_ns, wst->n_uid),
		FUNC2(&init_user_ns, wst->n_gid),
		FUNC3(&init_user_ns, wst->n_muid));

	req = FUNC4(clnt, P9_TWSTAT, "dwS", fid->fid, wst->size+2, wst);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto error;
	}

	FUNC6(P9_DEBUG_9P, "<<< RWSTAT fid %d\n", fid->fid);

	FUNC7(clnt, req);
error:
	return err;
}