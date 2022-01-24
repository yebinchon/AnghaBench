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
typedef  scalar_t__ u32 ;
struct sidtab_convert_params {struct sidtab* target; struct convert_context_args* args; int /*<<< orphan*/  func; } ;
struct sidtab {size_t len; scalar_t__ mls_enabled; } ;
struct selinux_state {int initialized; int /*<<< orphan*/  avc; TYPE_1__* ss; } ;
struct selinux_mapping {size_t len; scalar_t__ mls_enabled; } ;
struct selinux_map {struct sidtab* mapping; int /*<<< orphan*/  size; } ;
struct policydb {size_t len; scalar_t__ mls_enabled; } ;
struct policy_file {void* member_0; size_t member_1; } ;
struct convert_context_args {struct sidtab* newp; struct sidtab* oldp; struct selinux_state* state; } ;
struct TYPE_2__ {int /*<<< orphan*/  policy_rwlock; scalar_t__ latest_granting; struct selinux_map map; struct sidtab* sidtab; struct sidtab policydb; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  convert_context ; 
 struct sidtab* FUNC1 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sidtab*) ; 
 struct sidtab* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sidtab*,struct sidtab*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct sidtab*) ; 
 int FUNC6 (struct sidtab*,struct sidtab*) ; 
 int FUNC7 (struct sidtab*,struct policy_file*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  secclass_map ; 
 int /*<<< orphan*/  FUNC10 (struct selinux_state*) ; 
 int FUNC11 (struct selinux_state*,struct sidtab*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int FUNC14 (struct sidtab*,int /*<<< orphan*/ ,struct selinux_map*) ; 
 int /*<<< orphan*/  FUNC15 (struct selinux_state*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int FUNC18 (struct sidtab*,struct sidtab_convert_params*) ; 
 int /*<<< orphan*/  FUNC19 (struct sidtab*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *) ; 

int FUNC22(struct selinux_state *state, void *data, size_t len)
{
	struct policydb *policydb;
	struct sidtab *oldsidtab, *newsidtab;
	struct policydb *oldpolicydb, *newpolicydb;
	struct selinux_mapping *oldmapping;
	struct selinux_map newmap;
	struct sidtab_convert_params convert_params;
	struct convert_context_args args;
	u32 seqno;
	int rc = 0;
	struct policy_file file = { data, len }, *fp = &file;

	oldpolicydb = FUNC1(2, sizeof(*oldpolicydb), GFP_KERNEL);
	if (!oldpolicydb) {
		rc = -ENOMEM;
		goto out;
	}
	newpolicydb = oldpolicydb + 1;

	policydb = &state->ss->policydb;

	newsidtab = FUNC3(sizeof(*newsidtab), GFP_KERNEL);
	if (!newsidtab) {
		rc = -ENOMEM;
		goto out;
	}

	if (!state->initialized) {
		rc = FUNC7(policydb, fp);
		if (rc) {
			FUNC2(newsidtab);
			goto out;
		}

		policydb->len = len;
		rc = FUNC14(policydb, secclass_map,
					 &state->ss->map);
		if (rc) {
			FUNC2(newsidtab);
			FUNC5(policydb);
			goto out;
		}

		rc = FUNC6(policydb, newsidtab);
		if (rc) {
			FUNC2(newsidtab);
			FUNC5(policydb);
			goto out;
		}

		state->ss->sidtab = newsidtab;
		FUNC10(state);
		state->initialized = 1;
		seqno = ++state->ss->latest_granting;
		FUNC12();
		FUNC0(state->avc, seqno);
		FUNC17(seqno);
		FUNC15(state, seqno);
		FUNC13();
		FUNC16();
		goto out;
	}

	rc = FUNC7(newpolicydb, fp);
	if (rc) {
		FUNC2(newsidtab);
		goto out;
	}

	newpolicydb->len = len;
	/* If switching between different policy types, log MLS status */
	if (policydb->mls_enabled && !newpolicydb->mls_enabled)
		FUNC9("SELinux: Disabling MLS support...\n");
	else if (!policydb->mls_enabled && newpolicydb->mls_enabled)
		FUNC9("SELinux: Enabling MLS support...\n");

	rc = FUNC6(newpolicydb, newsidtab);
	if (rc) {
		FUNC8("SELinux:  unable to load the initial SIDs\n");
		FUNC5(newpolicydb);
		FUNC2(newsidtab);
		goto out;
	}

	rc = FUNC14(newpolicydb, secclass_map, &newmap);
	if (rc)
		goto err;

	rc = FUNC11(state, newpolicydb);
	if (rc) {
		FUNC8("SELinux:  unable to preserve booleans\n");
		goto err;
	}

	oldsidtab = state->ss->sidtab;

	/*
	 * Convert the internal representations of contexts
	 * in the new SID table.
	 */
	args.state = state;
	args.oldp = policydb;
	args.newp = newpolicydb;

	convert_params.func = convert_context;
	convert_params.args = &args;
	convert_params.target = newsidtab;

	rc = FUNC18(oldsidtab, &convert_params);
	if (rc) {
		FUNC8("SELinux:  unable to convert the internal"
			" representation of contexts in the new SID"
			" table\n");
		goto err;
	}

	/* Save the old policydb and SID table to free later. */
	FUNC4(oldpolicydb, policydb, sizeof(*policydb));

	/* Install the new policydb and SID table. */
	FUNC20(&state->ss->policy_rwlock);
	FUNC4(policydb, newpolicydb, sizeof(*policydb));
	state->ss->sidtab = newsidtab;
	FUNC10(state);
	oldmapping = state->ss->map.mapping;
	state->ss->map.mapping = newmap.mapping;
	state->ss->map.size = newmap.size;
	seqno = ++state->ss->latest_granting;
	FUNC21(&state->ss->policy_rwlock);

	/* Free the old policydb and SID table. */
	FUNC5(oldpolicydb);
	FUNC19(oldsidtab);
	FUNC2(oldsidtab);
	FUNC2(oldmapping);

	FUNC0(state->avc, seqno);
	FUNC17(seqno);
	FUNC15(state, seqno);
	FUNC13();
	FUNC16();

	rc = 0;
	goto out;

err:
	FUNC2(newmap.mapping);
	FUNC19(newsidtab);
	FUNC2(newsidtab);
	FUNC5(newpolicydb);

out:
	FUNC2(oldpolicydb);
	return rc;
}