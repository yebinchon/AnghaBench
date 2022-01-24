#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct user_datum {scalar_t__ value; } ;
struct type_datum {scalar_t__ value; } ;
struct role_datum {scalar_t__ value; } ;
struct ocontext {scalar_t__* sid; TYPE_4__* context; struct ocontext* next; } ;
struct convert_context_args {TYPE_5__* oldp; int /*<<< orphan*/  state; TYPE_6__* newp; } ;
struct context {char* str; int /*<<< orphan*/  len; scalar_t__ type; scalar_t__ role; scalar_t__ user; } ;
struct TYPE_13__ {int /*<<< orphan*/  table; } ;
struct TYPE_12__ {int /*<<< orphan*/  table; } ;
struct TYPE_11__ {int /*<<< orphan*/  table; } ;
struct TYPE_16__ {struct ocontext** ocontexts; scalar_t__ mls_enabled; TYPE_3__ p_types; TYPE_2__ p_roles; TYPE_1__ p_users; } ;
struct TYPE_15__ {scalar_t__ mls_enabled; } ;
struct TYPE_14__ {int /*<<< orphan*/  range; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t OCON_ISID ; 
 scalar_t__ SECINITSID_UNLABELED ; 
 int /*<<< orphan*/  SECSID_NULL ; 
 int /*<<< orphan*/  SYM_ROLES ; 
 int /*<<< orphan*/  SYM_TYPES ; 
 int /*<<< orphan*/  SYM_USERS ; 
 int /*<<< orphan*/  FUNC0 (struct context*) ; 
 int /*<<< orphan*/  FUNC1 (struct context*) ; 
 int FUNC2 (TYPE_5__*,struct context*,char**,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,struct context*) ; 
 void* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC8 (TYPE_5__*,TYPE_6__*,struct context*,struct context*) ; 
 int FUNC9 (struct context*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_6__*,struct context*) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*) ; 
 int FUNC13 (TYPE_6__*,int /*<<< orphan*/ *,char*,struct context*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_5__*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC15(struct context *oldc, struct context *newc, void *p)
{
	struct convert_context_args *args;
	struct ocontext *oc;
	struct role_datum *role;
	struct type_datum *typdatum;
	struct user_datum *usrdatum;
	char *s;
	u32 len;
	int rc;

	args = p;

	if (oldc->str) {
		s = FUNC6(oldc->str, GFP_KERNEL);
		if (!s)
			return -ENOMEM;

		rc = FUNC13(args->newp, NULL, s,
					      newc, SECSID_NULL);
		if (rc == -EINVAL) {
			/*
			 * Retain string representation for later mapping.
			 *
			 * IMPORTANT: We need to copy the contents of oldc->str
			 * back into s again because string_to_context_struct()
			 * may have garbled it.
			 */
			FUNC7(s, oldc->str, oldc->len);
			FUNC1(newc);
			newc->str = s;
			newc->len = oldc->len;
			return 0;
		}
		FUNC5(s);
		if (rc) {
			/* Other error condition, e.g. ENOMEM. */
			FUNC11("SELinux:   Unable to map context %s, rc = %d.\n",
			       oldc->str, -rc);
			return rc;
		}
		FUNC12("SELinux:  Context %s became valid (mapped).\n",
			oldc->str);
		return 0;
	}

	FUNC1(newc);

	/* Convert the user. */
	rc = -EINVAL;
	usrdatum = FUNC4(args->newp->p_users.table,
				  FUNC14(args->oldp,
					   SYM_USERS, oldc->user - 1));
	if (!usrdatum)
		goto bad;
	newc->user = usrdatum->value;

	/* Convert the role. */
	rc = -EINVAL;
	role = FUNC4(args->newp->p_roles.table,
			      FUNC14(args->oldp, SYM_ROLES, oldc->role - 1));
	if (!role)
		goto bad;
	newc->role = role->value;

	/* Convert the type. */
	rc = -EINVAL;
	typdatum = FUNC4(args->newp->p_types.table,
				  FUNC14(args->oldp,
					   SYM_TYPES, oldc->type - 1));
	if (!typdatum)
		goto bad;
	newc->type = typdatum->value;

	/* Convert the MLS fields if dealing with MLS policies */
	if (args->oldp->mls_enabled && args->newp->mls_enabled) {
		rc = FUNC8(args->oldp, args->newp, oldc, newc);
		if (rc)
			goto bad;
	} else if (!args->oldp->mls_enabled && args->newp->mls_enabled) {
		/*
		 * Switching between non-MLS and MLS policy:
		 * ensure that the MLS fields of the context for all
		 * existing entries in the sidtab are filled in with a
		 * suitable default value, likely taken from one of the
		 * initial SIDs.
		 */
		oc = args->newp->ocontexts[OCON_ISID];
		while (oc && oc->sid[0] != SECINITSID_UNLABELED)
			oc = oc->next;
		rc = -EINVAL;
		if (!oc) {
			FUNC11("SELinux:  unable to look up"
				" the initial SIDs list\n");
			goto bad;
		}
		rc = FUNC9(newc, &oc->context[0].range);
		if (rc)
			goto bad;
	}

	/* Check the validity of the new context. */
	if (!FUNC10(args->newp, newc)) {
		rc = FUNC3(args->state, oldc);
		if (rc)
			goto bad;
	}

	return 0;
bad:
	/* Map old representation to string and save it. */
	rc = FUNC2(args->oldp, oldc, &s, &len);
	if (rc)
		return rc;
	FUNC0(newc);
	newc->str = s;
	newc->len = len;
	FUNC12("SELinux:  Context %s became invalid (unmapped).\n",
		newc->str);
	return 0;
}