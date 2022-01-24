#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dentry; } ;
struct TYPE_4__ {scalar_t__ expiry_time; int /*<<< orphan*/  flags; } ;
struct svc_export {int ex_flags; int ex_fsid; char* ex_uuid; TYPE_2__ ex_path; int /*<<< orphan*/  ex_fslocs; int /*<<< orphan*/  ex_anon_gid; int /*<<< orphan*/  ex_anon_uid; TYPE_1__ h; int /*<<< orphan*/ * ex_devid_map; struct cache_detail* cd; struct auth_domain* ex_client; } ;
struct cache_detail {int dummy; } ;
struct auth_domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CACHE_NEGATIVE ; 
 int EINVAL ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  PAGE_SIZE ; 
 struct auth_domain* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct auth_domain*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct svc_export*) ; 
 int FUNC7 (char**,char*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char**) ; 
 int FUNC9 (char**,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (char*,int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (struct svc_export*) ; 
 int FUNC18 (char**,char*,char**) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int FUNC20 (char**,char*,int /*<<< orphan*/ ) ; 
 int FUNC21 (char**,char*,struct svc_export*) ; 
 scalar_t__ FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC24 (char*,char*) ; 
 struct svc_export* FUNC25 (struct svc_export*) ; 
 struct svc_export* FUNC26 (struct svc_export*,struct svc_export*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC28(struct cache_detail *cd, char *mesg, int mlen)
{
	/* client path expiry [flags anonuid anongid fsid] */
	char *buf;
	int len;
	int err;
	struct auth_domain *dom = NULL;
	struct svc_export exp = {}, *expp;
	int an_int;

	if (mesg[mlen-1] != '\n')
		return -EINVAL;
	mesg[mlen-1] = 0;

	buf = FUNC13(PAGE_SIZE, GFP_KERNEL);
	if (!buf)
		return -ENOMEM;

	/* client */
	err = -EINVAL;
	len = FUNC20(&mesg, buf, PAGE_SIZE);
	if (len <= 0)
		goto out;

	err = -ENOENT;
	dom = FUNC0(buf);
	if (!dom)
		goto out;

	/* path */
	err = -EINVAL;
	if ((len = FUNC20(&mesg, buf, PAGE_SIZE)) <= 0)
		goto out1;

	err = FUNC11(buf, 0, &exp.ex_path);
	if (err)
		goto out1;

	exp.ex_client = dom;
	exp.cd = cd;
	exp.ex_devid_map = NULL;

	/* expiry */
	err = -EINVAL;
	exp.h.expiry_time = FUNC8(&mesg);
	if (exp.h.expiry_time == 0)
		goto out3;

	/* flags */
	err = FUNC9(&mesg, &an_int);
	if (err == -ENOENT) {
		err = 0;
		FUNC23(CACHE_NEGATIVE, &exp.h.flags);
	} else {
		if (err || an_int < 0)
			goto out3;
		exp.ex_flags= an_int;
	
		/* anon uid */
		err = FUNC9(&mesg, &an_int);
		if (err)
			goto out3;
		exp.ex_anon_uid= FUNC15(FUNC4(), an_int);

		/* anon gid */
		err = FUNC9(&mesg, &an_int);
		if (err)
			goto out3;
		exp.ex_anon_gid= FUNC14(FUNC4(), an_int);

		/* fsid */
		err = FUNC9(&mesg, &an_int);
		if (err)
			goto out3;
		exp.ex_fsid = an_int;

		while ((len = FUNC20(&mesg, buf, PAGE_SIZE)) > 0) {
			if (FUNC24(buf, "fsloc") == 0)
				err = FUNC7(&mesg, buf, &exp.ex_fslocs);
			else if (FUNC24(buf, "uuid") == 0)
				err = FUNC18(&mesg, buf, &exp.ex_uuid);
			else if (FUNC24(buf, "secinfo") == 0)
				err = FUNC21(&mesg, buf, &exp);
			else
				/* quietly ignore unknown words and anything
				 * following. Newer user-space can try to set
				 * new values, then see what the result was.
				 */
				break;
			if (err)
				goto out4;
		}

		err = FUNC3(FUNC5(exp.ex_path.dentry), &exp.ex_flags,
				   exp.ex_uuid);
		if (err)
			goto out4;
		/*
		 * No point caching this if it would immediately expire.
		 * Also, this protects exportfs's dummy export from the
		 * anon_uid/anon_gid checks:
		 */
		if (exp.h.expiry_time < FUNC22())
			goto out4;
		/*
		 * For some reason exportfs has been passing down an
		 * invalid (-1) uid & gid on the "dummy" export which it
		 * uses to test export support.  To make sure exportfs
		 * sees errors from check_export we therefore need to
		 * delay these checks till after check_export:
		 */
		err = -EINVAL;
		if (!FUNC27(exp.ex_anon_uid))
			goto out4;
		if (!FUNC10(exp.ex_anon_gid))
			goto out4;
		err = 0;

		FUNC17(&exp);
	}

	expp = FUNC25(&exp);
	if (expp)
		expp = FUNC26(&exp, expp);
	else
		err = -ENOMEM;
	FUNC2();
	if (expp == NULL)
		err = -ENOMEM;
	else
		FUNC6(expp);
out4:
	FUNC16(&exp.ex_fslocs);
	FUNC12(exp.ex_uuid);
out3:
	FUNC19(&exp.ex_path);
out1:
	FUNC1(dom);
out:
	FUNC12(buf);
	return err;
}