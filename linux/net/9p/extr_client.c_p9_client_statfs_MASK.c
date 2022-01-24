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
struct p9_rstatfs {scalar_t__ namelen; int /*<<< orphan*/  fsid; int /*<<< orphan*/  ffree; int /*<<< orphan*/  files; int /*<<< orphan*/  bavail; int /*<<< orphan*/  bfree; int /*<<< orphan*/  blocks; scalar_t__ bsize; scalar_t__ type; } ;
struct p9_req_t {int /*<<< orphan*/  rc; } ;
struct p9_fid {int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  proto_version; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TSTATFS ; 
 int FUNC1 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC2 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*,struct p9_req_t*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,scalar_t__*,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct p9_client*,int /*<<< orphan*/ *) ; 

int FUNC7(struct p9_fid *fid, struct p9_rstatfs *sb)
{
	int err;
	struct p9_req_t *req;
	struct p9_client *clnt;

	err = 0;
	clnt = fid->clnt;

	FUNC3(P9_DEBUG_9P, ">>> TSTATFS fid %d\n", fid->fid);

	req = FUNC2(clnt, P9_TSTATFS, "d", fid->fid);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto error;
	}

	err = FUNC5(&req->rc, clnt->proto_version, "ddqqqqqqd", &sb->type,
			  &sb->bsize, &sb->blocks, &sb->bfree, &sb->bavail,
			  &sb->files, &sb->ffree, &sb->fsid, &sb->namelen);
	if (err) {
		FUNC6(clnt, &req->rc);
		FUNC4(clnt, req);
		goto error;
	}

	FUNC3(P9_DEBUG_9P, "<<< RSTATFS fid %d type 0x%lx bsize %ld "
		"blocks %llu bfree %llu bavail %llu files %llu ffree %llu "
		"fsid %llu namelen %ld\n",
		fid->fid, (long unsigned int)sb->type, (long int)sb->bsize,
		sb->blocks, sb->bfree, sb->bavail, sb->files,  sb->ffree,
		sb->fsid, (long int)sb->namelen);

	FUNC4(clnt, req);
error:
	return err;
}