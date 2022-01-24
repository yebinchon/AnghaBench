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
typedef  scalar_t__ u64 ;
struct p9_req_t {int dummy; } ;
struct p9_fid {int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TXATTRCREATE ; 
 int FUNC1 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC2 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*,struct p9_req_t*) ; 

int FUNC5(struct p9_fid *fid, const char *name,
			u64 attr_size, int flags)
{
	int err;
	struct p9_req_t *req;
	struct p9_client *clnt;

	FUNC3(P9_DEBUG_9P,
		">>> TXATTRCREATE fid %d name  %s size %lld flag %d\n",
		fid->fid, name, (long long)attr_size, flags);
	err = 0;
	clnt = fid->clnt;
	req = FUNC2(clnt, P9_TXATTRCREATE, "dsqd",
			fid->fid, name, attr_size, flags);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto error;
	}
	FUNC3(P9_DEBUG_9P, "<<< RXATTRCREATE fid %d\n", fid->fid);
	FUNC4(clnt, req);
error:
	return err;
}