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
struct nlm_res {scalar_t__ status; } ;
struct nlm_rqst {int /*<<< orphan*/  a_count; struct nlm_res a_res; struct nlm_host* a_host; } ;
struct nlm_host {int /*<<< orphan*/  h_rwsem; } ;
struct file_lock {unsigned char fl_flags; int /*<<< orphan*/  fl_file; } ;

/* Variables and functions */
 int ENOENT ; 
 int ENOLCK ; 
 unsigned char FL_EXISTS ; 
 int /*<<< orphan*/  NLMPROC_UNLOCK ; 
 int FUNC0 (struct file_lock*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ nlm_granted ; 
 scalar_t__ nlm_lck_denied_nolocks ; 
 int FUNC3 (int /*<<< orphan*/ ,struct nlm_rqst*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct nlm_rqst*) ; 
 int /*<<< orphan*/  nlmclnt_unlock_ops ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC9(struct nlm_rqst *req, struct file_lock *fl)
{
	struct nlm_host	*host = req->a_host;
	struct nlm_res	*resp = &req->a_res;
	int status;
	unsigned char fl_flags = fl->fl_flags;

	/*
	 * Note: the server is supposed to either grant us the unlock
	 * request, or to deny it with NLM_LCK_DENIED_GRACE_PERIOD. In either
	 * case, we want to unlock.
	 */
	fl->fl_flags |= FL_EXISTS;
	FUNC1(&host->h_rwsem);
	status = FUNC0(fl);
	FUNC8(&host->h_rwsem);
	fl->fl_flags = fl_flags;
	if (status == -ENOENT) {
		status = 0;
		goto out;
	}

	FUNC7(&req->a_count);
	status = FUNC3(FUNC2(fl->fl_file), req,
			NLMPROC_UNLOCK, &nlmclnt_unlock_ops);
	if (status < 0)
		goto out;

	if (resp->status == nlm_granted)
		goto out;

	if (resp->status != nlm_lck_denied_nolocks)
		FUNC6("lockd: unexpected unlock status: %d\n",
			FUNC5(resp->status));
	/* What to do now? I'm out of my depth... */
	status = -ENOLCK;
out:
	FUNC4(req);
	return status;
}