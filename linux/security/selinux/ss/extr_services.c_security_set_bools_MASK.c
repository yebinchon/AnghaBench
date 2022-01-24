#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct selinux_state {int /*<<< orphan*/  avc; TYPE_3__* ss; } ;
struct TYPE_4__ {int nprim; } ;
struct policydb {struct cond_node* cond_list; TYPE_2__** bool_val_to_struct; TYPE_1__ p_bools; } ;
struct cond_node {struct cond_node* next; } ;
struct TYPE_6__ {int latest_granting; int /*<<< orphan*/  policy_rwlock; struct policydb policydb; } ;
struct TYPE_5__ {int state; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_MAC_CONFIG_CHANGE ; 
 int EFAULT ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SYM_BOOLS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  current ; 
 int FUNC5 (struct policydb*,struct cond_node*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  init_user_ns ; 
 int /*<<< orphan*/  FUNC7 (struct selinux_state*,int) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct policydb*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

int FUNC13(struct selinux_state *state, int len, int *values)
{
	struct policydb *policydb;
	int i, rc;
	int lenp, seqno = 0;
	struct cond_node *cur;

	FUNC11(&state->ss->policy_rwlock);

	policydb = &state->ss->policydb;

	rc = -EFAULT;
	lenp = policydb->p_bools.nprim;
	if (len != lenp)
		goto out;

	for (i = 0; i < len; i++) {
		if (!!values[i] != policydb->bool_val_to_struct[i]->state) {
			FUNC3(FUNC0(), GFP_ATOMIC,
				AUDIT_MAC_CONFIG_CHANGE,
				"bool=%s val=%d old_val=%d auid=%u ses=%u",
				FUNC10(policydb, SYM_BOOLS, i),
				!!values[i],
				policydb->bool_val_to_struct[i]->state,
				FUNC6(&init_user_ns, FUNC1(current)),
				FUNC2(current));
		}
		if (values[i])
			policydb->bool_val_to_struct[i]->state = 1;
		else
			policydb->bool_val_to_struct[i]->state = 0;
	}

	for (cur = policydb->cond_list; cur; cur = cur->next) {
		rc = FUNC5(policydb, cur);
		if (rc)
			goto out;
	}

	seqno = ++state->ss->latest_granting;
	rc = 0;
out:
	FUNC12(&state->ss->policy_rwlock);
	if (!rc) {
		FUNC4(state->avc, seqno);
		FUNC9(seqno);
		FUNC7(state, seqno);
		FUNC8();
	}
	return rc;
}