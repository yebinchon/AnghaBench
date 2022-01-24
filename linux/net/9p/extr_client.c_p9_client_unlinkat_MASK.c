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
struct p9_req_t {int dummy; } ;
struct p9_fid {int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct p9_req_t*) ; 
 int /*<<< orphan*/  P9_DEBUG_9P ; 
 int /*<<< orphan*/  P9_TUNLINKAT ; 
 int FUNC1 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC2 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char const*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*,struct p9_req_t*) ; 

int FUNC5(struct p9_fid *dfid, const char *name, int flags)
{
	int err = 0;
	struct p9_req_t *req;
	struct p9_client *clnt;

	FUNC3(P9_DEBUG_9P, ">>> TUNLINKAT fid %d %s %d\n",
		   dfid->fid, name, flags);

	clnt = dfid->clnt;
	req = FUNC2(clnt, P9_TUNLINKAT, "dsd", dfid->fid, name, flags);
	if (FUNC0(req)) {
		err = FUNC1(req);
		goto error;
	}
	FUNC3(P9_DEBUG_9P, "<<< RUNLINKAT fid %d %s\n", dfid->fid, name);

	FUNC4(clnt, req);
error:
	return err;
}