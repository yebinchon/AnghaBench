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
typedef  scalar_t__ u16 ;
struct selinux_state {TYPE_1__* ss; } ;
struct policydb {int dummy; } ;
struct context {int dummy; } ;
struct audit_buffer {int dummy; } ;
struct TYPE_2__ {struct policydb policydb; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDIT_SELINUX_ERR ; 
 int EACCES ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SYM_CLASSES ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct audit_buffer*,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct audit_buffer*,char*,scalar_t__) ; 
 struct audit_buffer* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct policydb*,struct context*,char**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct selinux_state*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (struct policydb*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC9(
	struct selinux_state *state,
	struct context *scontext,
	struct context *tcontext,
	u16 tclass,
	struct context *newcontext)
{
	struct policydb *policydb = &state->ss->policydb;
	char *s = NULL, *t = NULL, *n = NULL;
	u32 slen, tlen, nlen;
	struct audit_buffer *ab;

	if (FUNC5(policydb, scontext, &s, &slen))
		goto out;
	if (FUNC5(policydb, tcontext, &t, &tlen))
		goto out;
	if (FUNC5(policydb, newcontext, &n, &nlen))
		goto out;
	ab = FUNC4(FUNC0(), GFP_ATOMIC, AUDIT_SELINUX_ERR);
	FUNC2(ab,
			 "op=security_compute_sid invalid_context=");
	/* no need to record the NUL with untrusted strings */
	FUNC3(ab, n, nlen - 1);
	FUNC2(ab, " scontext=%s tcontext=%s tclass=%s",
			 s, t, FUNC8(policydb, SYM_CLASSES, tclass-1));
	FUNC1(ab);
out:
	FUNC7(s);
	FUNC7(t);
	FUNC7(n);
	if (!FUNC6(state))
		return 0;
	return -EACCES;
}