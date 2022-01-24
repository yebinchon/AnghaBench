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
struct cred {int dummy; } ;
struct aa_task_ctx {struct aa_label* nnp; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (struct aa_task_ctx*) ; 
 struct aa_label* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct aa_label*) ; 
 struct aa_label* FUNC4 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC5 (struct aa_label*) ; 
 int /*<<< orphan*/  FUNC6 (struct cred*) ; 
 struct aa_label* FUNC7 (struct cred*) ; 
 int /*<<< orphan*/  current ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 scalar_t__ FUNC10 (struct aa_label*) ; 
 scalar_t__ FUNC11 (struct aa_label*) ; 
 struct cred* FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (struct cred*,struct aa_label*) ; 
 struct aa_task_ctx* FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (struct aa_label*) ; 

int FUNC16(struct aa_label *label)
{
	struct aa_label *old = FUNC2();
	struct aa_task_ctx *ctx = FUNC14(current);
	struct cred *new;

	FUNC0(!label);

	if (old == label)
		return 0;

	if (FUNC8() != FUNC9())
		return -EBUSY;

	new  = FUNC12();
	if (!new)
		return -ENOMEM;

	if (ctx->nnp && FUNC10(ctx->nnp)) {
		struct aa_label *tmp = ctx->nnp;

		ctx->nnp = FUNC4(tmp);
		FUNC5(tmp);
	}
	if (FUNC15(label) || (FUNC11(old) != FUNC11(label)))
		/*
		 * if switching to unconfined or a different label namespace
		 * clear out context state
		 */
		FUNC1(FUNC14(current));

	/*
	 * be careful switching cred label, when racing replacement it
	 * is possible that the cred labels's->proxy->label is the reference
	 * keeping @label valid, so make sure to get its reference before
	 * dropping the reference on the cred's label
	 */
	FUNC3(label);
	FUNC5(FUNC7(new));
	FUNC13(new, label);

	FUNC6(new);
	return 0;
}