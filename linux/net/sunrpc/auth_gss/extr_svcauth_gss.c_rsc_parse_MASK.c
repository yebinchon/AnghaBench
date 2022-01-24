#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_7__ {scalar_t__ expiry_time; scalar_t__ flags; } ;
struct TYPE_5__ {int /*<<< orphan*/  cr_principal; struct gss_api_mech* cr_gss_mech; TYPE_2__* cr_group_info; void* cr_gid; int /*<<< orphan*/  cr_uid; } ;
struct rsc {TYPE_4__ h; TYPE_1__ cred; int /*<<< orphan*/  mechctx; int /*<<< orphan*/  handle; } ;
struct gss_api_mech {int dummy; } ;
struct cache_detail {int dummy; } ;
typedef  int /*<<< orphan*/  rsci ;
typedef  void* kgid_t ;
struct TYPE_6__ {void** gid; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int NGROUPS_MAX ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,struct cache_detail*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC3 (char**) ; 
 int FUNC4 (char**,int*) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 TYPE_2__* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 
 int FUNC8 (char*,int,struct gss_api_mech*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct gss_api_mech* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 void* FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct rsc*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 (char**,char*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct rsc*) ; 
 struct rsc* FUNC16 (struct cache_detail*,struct rsc*) ; 
 struct rsc* FUNC17 (struct cache_detail*,struct rsc*,struct rsc*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,scalar_t__*) ; 

__attribute__((used)) static int FUNC19(struct cache_detail *cd,
		     char *mesg, int mlen)
{
	/* contexthandle expiry [ uid gid N <n gids> mechname ...mechdata... ] */
	char *buf = mesg;
	int id;
	int len, rv;
	struct rsc rsci, *rscp = NULL;
	time_t expiry;
	int status = -EINVAL;
	struct gss_api_mech *gm = NULL;

	FUNC13(&rsci, 0, sizeof(rsci));
	/* context handle */
	len = FUNC14(&mesg, buf, mlen);
	if (len < 0) goto out;
	status = -ENOMEM;
	if (FUNC2(&rsci.handle, buf, len))
		goto out;

	rsci.h.flags = 0;
	/* expiry */
	expiry = FUNC3(&mesg);
	status = -EINVAL;
	if (expiry == 0)
		goto out;

	rscp = FUNC16(cd, &rsci);
	if (!rscp)
		goto out;

	/* uid, or NEGATIVE */
	rv = FUNC4(&mesg, &id);
	if (rv == -EINVAL)
		goto out;
	if (rv == -ENOENT)
		FUNC18(CACHE_NEGATIVE, &rsci.h.flags);
	else {
		int N, i;

		/*
		 * NOTE: we skip uid_valid()/gid_valid() checks here:
		 * instead, * -1 id's are later mapped to the
		 * (export-specific) anonymous id by nfsd_setuser.
		 *
		 * (But supplementary gid's get no such special
		 * treatment so are checked for validity here.)
		 */
		/* uid */
		rsci.cred.cr_uid = FUNC12(FUNC1(), id);

		/* gid */
		if (FUNC4(&mesg, &id))
			goto out;
		rsci.cred.cr_gid = FUNC11(FUNC1(), id);

		/* number of additional gid's */
		if (FUNC4(&mesg, &N))
			goto out;
		if (N < 0 || N > NGROUPS_MAX)
			goto out;
		status = -ENOMEM;
		rsci.cred.cr_group_info = FUNC6(N);
		if (rsci.cred.cr_group_info == NULL)
			goto out;

		/* gid's */
		status = -EINVAL;
		for (i=0; i<N; i++) {
			kgid_t kgid;
			if (FUNC4(&mesg, &id))
				goto out;
			kgid = FUNC11(FUNC1(), id);
			if (!FUNC5(kgid))
				goto out;
			rsci.cred.cr_group_info->gid[i] = kgid;
		}
		FUNC7(rsci.cred.cr_group_info);

		/* mech name */
		len = FUNC14(&mesg, buf, mlen);
		if (len < 0)
			goto out;
		gm = rsci.cred.cr_gss_mech = FUNC9(buf);
		status = -EOPNOTSUPP;
		if (!gm)
			goto out;

		status = -EINVAL;
		/* mech-specific data: */
		len = FUNC14(&mesg, buf, mlen);
		if (len < 0)
			goto out;
		status = FUNC8(buf, len, gm, &rsci.mechctx,
						NULL, GFP_KERNEL);
		if (status)
			goto out;

		/* get client name */
		len = FUNC14(&mesg, buf, mlen);
		if (len > 0) {
			rsci.cred.cr_principal = FUNC10(buf, GFP_KERNEL);
			if (!rsci.cred.cr_principal) {
				status = -ENOMEM;
				goto out;
			}
		}

	}
	rsci.h.expiry_time = expiry;
	rscp = FUNC17(cd, &rsci, rscp);
	status = 0;
out:
	FUNC15(&rsci);
	if (rscp)
		FUNC0(&rscp->h, cd);
	else
		status = -ENOMEM;
	return status;
}