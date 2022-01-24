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
 int /*<<< orphan*/  P9_TLINK ; 
 int FUNC1 (struct p9_req_t*) ; 
 struct p9_req_t* FUNC2 (struct p9_client*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct p9_client*,struct p9_req_t*) ; 

int FUNC5(struct p9_fid *dfid, struct p9_fid *oldfid, const char *newname)
{
	struct p9_client *clnt;
	struct p9_req_t *req;

	FUNC3(P9_DEBUG_9P, ">>> TLINK dfid %d oldfid %d newname %s\n",
			dfid->fid, oldfid->fid, newname);
	clnt = dfid->clnt;
	req = FUNC2(clnt, P9_TLINK, "dds", dfid->fid, oldfid->fid,
			newname);
	if (FUNC0(req))
		return FUNC1(req);

	FUNC3(P9_DEBUG_9P, "<<< RLINK\n");
	FUNC4(clnt, req);
	return 0;
}