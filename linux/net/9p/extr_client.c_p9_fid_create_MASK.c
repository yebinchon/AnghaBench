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
struct p9_qid {int dummy; } ;
struct p9_fid {int mode; scalar_t__ fid; int /*<<< orphan*/ * rdir; struct p9_client* clnt; int /*<<< orphan*/  uid; int /*<<< orphan*/  qid; } ;
struct p9_client {int /*<<< orphan*/  lock; int /*<<< orphan*/  fids; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  GFP_NOWAIT ; 
 int /*<<< orphan*/  P9_DEBUG_FID ; 
 scalar_t__ P9_NOFID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ *,struct p9_fid*,scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct p9_fid*) ; 
 struct p9_fid* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,struct p9_client*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct p9_fid *FUNC10(struct p9_client *clnt)
{
	int ret;
	struct p9_fid *fid;

	FUNC7(P9_DEBUG_FID, "clnt %p\n", clnt);
	fid = FUNC5(sizeof(struct p9_fid), GFP_KERNEL);
	if (!fid)
		return NULL;

	FUNC6(&fid->qid, 0, sizeof(struct p9_qid));
	fid->mode = -1;
	fid->uid = FUNC0();
	fid->clnt = clnt;
	fid->rdir = NULL;
	fid->fid = 0;

	FUNC2(GFP_KERNEL);
	FUNC8(&clnt->lock);
	ret = FUNC1(&clnt->fids, fid, &fid->fid, P9_NOFID - 1,
			    GFP_NOWAIT);
	FUNC9(&clnt->lock);
	FUNC3();

	if (!ret)
		return fid;

	FUNC4(fid);
	return NULL;
}