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
struct p9_fid {struct p9_fid* rdir; int /*<<< orphan*/  fid; struct p9_client* clnt; } ;
struct p9_client {int /*<<< orphan*/  lock; int /*<<< orphan*/  fids; } ;

/* Variables and functions */
 int /*<<< orphan*/  P9_DEBUG_FID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct p9_fid*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct p9_fid *fid)
{
	struct p9_client *clnt;
	unsigned long flags;

	FUNC2(P9_DEBUG_FID, "fid %d\n", fid->fid);
	clnt = fid->clnt;
	FUNC3(&clnt->lock, flags);
	FUNC0(&clnt->fids, fid->fid);
	FUNC4(&clnt->lock, flags);
	FUNC1(fid->rdir);
	FUNC1(fid);
}