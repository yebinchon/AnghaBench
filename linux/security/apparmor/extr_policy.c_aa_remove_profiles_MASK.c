#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* hname; } ;
struct aa_profile {TYPE_2__ base; } ;
struct aa_ns {int /*<<< orphan*/  lock; int /*<<< orphan*/  base; int /*<<< orphan*/  level; TYPE_1__* parent; } ;
struct aa_label {int dummy; } ;
typedef  size_t ssize_t ;
struct TYPE_3__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 size_t ENOENT ; 
 int /*<<< orphan*/  OP_PROF_RM ; 
 int /*<<< orphan*/  FUNC0 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC1 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (struct aa_profile*) ; 
 struct aa_ns* FUNC5 (struct aa_ns*) ; 
 struct aa_profile* FUNC6 (int /*<<< orphan*/ ) ; 
 struct aa_ns* FUNC7 (struct aa_ns*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (struct aa_ns*) ; 
 int /*<<< orphan*/  FUNC9 (struct aa_profile*) ; 
 char* FUNC10 (char*,size_t,char const**,size_t*) ; 
 int /*<<< orphan*/  FUNC11 (struct aa_label*,int /*<<< orphan*/ ,char const*,char const*,char const*,size_t) ; 
 struct aa_ns* FUNC12 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

ssize_t FUNC15(struct aa_ns *policy_ns, struct aa_label *subj,
			   char *fqname, size_t size)
{
	struct aa_ns *ns = NULL;
	struct aa_profile *profile = NULL;
	const char *name = fqname, *info = NULL;
	const char *ns_name = NULL;
	ssize_t error = 0;

	if (*fqname == 0) {
		info = "no profile specified";
		error = -ENOENT;
		goto fail;
	}

	if (fqname[0] == ':') {
		size_t ns_len;

		name = FUNC10(fqname, size, &ns_name, &ns_len);
		/* released below */
		ns = FUNC7(policy_ns ? policy_ns : FUNC12(subj),
				   ns_name, ns_len);
		if (!ns) {
			info = "namespace does not exist";
			error = -ENOENT;
			goto fail;
		}
	} else
		/* released below */
		ns = FUNC5(policy_ns ? policy_ns : FUNC12(subj));

	if (!name) {
		/* remove namespace - can only happen if fqname[0] == ':' */
		FUNC13(&ns->parent->lock, ns->level);
		FUNC2(ns);
		FUNC0(ns);
		FUNC14(&ns->parent->lock);
	} else {
		/* remove profile */
		FUNC13(&ns->lock, ns->level);
		profile = FUNC6(FUNC3(&ns->base, name));
		if (!profile) {
			error = -ENOENT;
			info = "profile does not exist";
			goto fail_ns_lock;
		}
		name = profile->base.hname;
		FUNC4(profile);
		FUNC1(ns);
		FUNC0(ns);
		FUNC14(&ns->lock);
	}

	/* don't fail removal if audit fails */
	(void) FUNC11(subj, OP_PROF_RM, ns_name, name, info,
			    error);
	FUNC8(ns);
	FUNC9(profile);
	return size;

fail_ns_lock:
	FUNC14(&ns->lock);
	FUNC8(ns);

fail:
	(void) FUNC11(subj, OP_PROF_RM, ns_name, name, info,
			    error);
	return error;
}