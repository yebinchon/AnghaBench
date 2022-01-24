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
typedef  scalar_t__ u32 ;
struct policydb {int dummy; } ;
struct context {scalar_t__ type; scalar_t__ role; scalar_t__ user; int /*<<< orphan*/  str; scalar_t__ len; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  SYM_ROLES ; 
 int /*<<< orphan*/  SYM_TYPES ; 
 int /*<<< orphan*/  SYM_USERS ; 
 char* FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct policydb*,struct context*) ; 
 int /*<<< orphan*/  FUNC3 (struct policydb*,struct context*,char**) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,char*,char*) ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (struct policydb*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(struct policydb *p,
				    struct context *context,
				    char **scontext, u32 *scontext_len)
{
	char *scontextp;

	if (scontext)
		*scontext = NULL;
	*scontext_len = 0;

	if (context->len) {
		*scontext_len = context->len;
		if (scontext) {
			*scontext = FUNC1(context->str, GFP_ATOMIC);
			if (!(*scontext))
				return -ENOMEM;
		}
		return 0;
	}

	/* Compute the size of the context. */
	*scontext_len += FUNC5(FUNC6(p, SYM_USERS, context->user - 1)) + 1;
	*scontext_len += FUNC5(FUNC6(p, SYM_ROLES, context->role - 1)) + 1;
	*scontext_len += FUNC5(FUNC6(p, SYM_TYPES, context->type - 1)) + 1;
	*scontext_len += FUNC2(p, context);

	if (!scontext)
		return 0;

	/* Allocate space for the context; caller must free this space. */
	scontextp = FUNC0(*scontext_len, GFP_ATOMIC);
	if (!scontextp)
		return -ENOMEM;
	*scontext = scontextp;

	/*
	 * Copy the user name, role name and type name into the context.
	 */
	scontextp += FUNC4(scontextp, "%s:%s:%s",
		FUNC6(p, SYM_USERS, context->user - 1),
		FUNC6(p, SYM_ROLES, context->role - 1),
		FUNC6(p, SYM_TYPES, context->type - 1));

	FUNC3(p, context, &scontextp);

	*scontextp = 0;

	return 0;
}