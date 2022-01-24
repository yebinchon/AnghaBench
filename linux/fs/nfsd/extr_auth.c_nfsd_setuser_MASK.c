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
struct TYPE_2__ {struct group_info* cr_group_info; int /*<<< orphan*/  cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct svc_rqst {TYPE_1__ rq_cred; } ;
struct svc_export {int /*<<< orphan*/  ex_anon_gid; int /*<<< orphan*/  ex_anon_uid; } ;
struct group_info {int ngroups; int /*<<< orphan*/ * gid; } ;
struct cred {int /*<<< orphan*/  cap_permitted; int /*<<< orphan*/  cap_effective; int /*<<< orphan*/  fsuid; int /*<<< orphan*/  fsgid; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GLOBAL_ROOT_GID ; 
 int /*<<< orphan*/  GLOBAL_ROOT_UID ; 
 int /*<<< orphan*/  INVALID_GID ; 
 int /*<<< orphan*/  INVALID_UID ; 
 int NFSEXP_ALLSQUASH ; 
 int NFSEXP_ROOTSQUASH ; 
 int /*<<< orphan*/  FUNC0 (struct cred*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct group_info* FUNC5 (struct group_info*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct group_info* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct group_info*) ; 
 int FUNC9 (struct svc_rqst*,struct svc_export*) ; 
 struct cred* FUNC10 (struct cred*) ; 
 struct cred* FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (struct cred*) ; 
 int /*<<< orphan*/  FUNC13 (struct group_info*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (struct cred*,struct group_info*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 

int FUNC18(struct svc_rqst *rqstp, struct svc_export *exp)
{
	struct group_info *rqgi;
	struct group_info *gi;
	struct cred *new;
	int i;
	int flags = FUNC9(rqstp, exp);

	FUNC17();

	/* discard any old override before preparing the new set */
	FUNC14(FUNC4(FUNC3()));
	new = FUNC11();
	if (!new)
		return -ENOMEM;

	new->fsuid = rqstp->rq_cred.cr_uid;
	new->fsgid = rqstp->rq_cred.cr_gid;

	rqgi = rqstp->rq_cred.cr_group_info;

	if (flags & NFSEXP_ALLSQUASH) {
		new->fsuid = exp->ex_anon_uid;
		new->fsgid = exp->ex_anon_gid;
		gi = FUNC7(0);
		if (!gi)
			goto oom;
	} else if (flags & NFSEXP_ROOTSQUASH) {
		if (FUNC16(new->fsuid, GLOBAL_ROOT_UID))
			new->fsuid = exp->ex_anon_uid;
		if (FUNC6(new->fsgid, GLOBAL_ROOT_GID))
			new->fsgid = exp->ex_anon_gid;

		gi = FUNC7(rqgi->ngroups);
		if (!gi)
			goto oom;

		for (i = 0; i < rqgi->ngroups; i++) {
			if (FUNC6(GLOBAL_ROOT_GID, rqgi->gid[i]))
				gi->gid[i] = exp->ex_anon_gid;
			else
				gi->gid[i] = rqgi->gid[i];
		}

		/* Each thread allocates its own gi, no race */
		FUNC8(gi);
	} else {
		gi = FUNC5(rqgi);
	}

	if (FUNC16(new->fsuid, INVALID_UID))
		new->fsuid = exp->ex_anon_uid;
	if (FUNC6(new->fsgid, INVALID_GID))
		new->fsgid = exp->ex_anon_gid;

	FUNC15(new, gi);
	FUNC13(gi);

	if (!FUNC16(new->fsuid, GLOBAL_ROOT_UID))
		new->cap_effective = FUNC1(new->cap_effective);
	else
		new->cap_effective = FUNC2(new->cap_effective,
							new->cap_permitted);
	FUNC17();
	FUNC12(FUNC10(new));
	FUNC12(new);
	FUNC17();
	return 0;

oom:
	FUNC0(new);
	return -ENOMEM;
}