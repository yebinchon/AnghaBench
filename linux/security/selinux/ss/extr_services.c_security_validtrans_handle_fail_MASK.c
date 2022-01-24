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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct selinux_state {TYPE_1__* ss; } ;
struct policydb {int dummy; } ;
struct context {int dummy; } ;
struct TYPE_2__ {struct policydb policydb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SELINUX_ERR ; 
 int EPERM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SYM_CLASSES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct policydb*,struct context*,char**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct selinux_state*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct policydb*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct selinux_state *state,
					   struct context *ocontext,
					   struct context *ncontext,
					   struct context *tcontext,
					   u16 tclass)
{
	struct policydb *p = &state->ss->policydb;
	char *o = NULL, *n = NULL, *t = NULL;
	u32 olen, nlen, tlen;

	if (FUNC2(p, ocontext, &o, &olen))
		goto out;
	if (FUNC2(p, ncontext, &n, &nlen))
		goto out;
	if (FUNC2(p, tcontext, &t, &tlen))
		goto out;
	FUNC1(FUNC0(), GFP_ATOMIC, AUDIT_SELINUX_ERR,
		  "op=security_validate_transition seresult=denied"
		  " oldcontext=%s newcontext=%s taskcontext=%s tclass=%s",
		  o, n, t, FUNC5(p, SYM_CLASSES, tclass-1));
out:
	FUNC4(o);
	FUNC4(n);
	FUNC4(t);

	if (!FUNC3(state))
		return 0;
	return -EPERM;
}