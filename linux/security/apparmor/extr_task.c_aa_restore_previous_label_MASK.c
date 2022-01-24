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
struct aa_task_ctx {scalar_t__ token; int /*<<< orphan*/  previous; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EACCES ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct aa_task_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct cred*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred*) ; 
 int /*<<< orphan*/  current ; 
 struct cred* FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (struct cred*,int /*<<< orphan*/ ) ; 
 struct aa_task_ctx* FUNC8 (int /*<<< orphan*/ ) ; 

int FUNC9(u64 token)
{
	struct aa_task_ctx *ctx = FUNC8(current);
	struct cred *new;

	if (ctx->token != token)
		return -EACCES;
	/* ignore restores when there is no saved label */
	if (!ctx->previous)
		return 0;

	new = FUNC6();
	if (!new)
		return -ENOMEM;

	FUNC3(FUNC5(new));
	FUNC7(new, FUNC2(ctx->previous));
	FUNC0(!FUNC5(new));
	/* clear exec && prev information when restoring to previous context */
	FUNC1(ctx);

	FUNC4(new);

	return 0;
}