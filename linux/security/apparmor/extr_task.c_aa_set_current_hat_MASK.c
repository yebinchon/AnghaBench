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
typedef  scalar_t__ u64 ;
struct cred {int dummy; } ;
struct aa_task_ctx {scalar_t__ token; int /*<<< orphan*/ * onexec; int /*<<< orphan*/ * previous; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct cred*) ; 
 int /*<<< orphan*/  FUNC4 (struct cred*) ; 
 int /*<<< orphan*/ * FUNC5 (struct cred*) ; 
 int /*<<< orphan*/  current ; 
 struct cred* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cred*,int /*<<< orphan*/ ) ; 
 struct aa_task_ctx* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(struct aa_label *label, u64 token)
{
	struct aa_task_ctx *ctx = FUNC8(current);
	struct cred *new;

	new = FUNC6();
	if (!new)
		return -ENOMEM;
	FUNC0(!label);

	if (!ctx->previous) {
		/* transfer refcount */
		ctx->previous = FUNC5(new);
		ctx->token = token;
	} else if (ctx->token == token) {
		FUNC2(FUNC5(new));
	} else {
		/* previous_profile && ctx->token != token */
		FUNC3(new);
		return -EACCES;
	}

	FUNC7(new, FUNC1(label));
	/* clear exec on switching context */
	FUNC2(ctx->onexec);
	ctx->onexec = NULL;

	FUNC4(new);
	return 0;
}