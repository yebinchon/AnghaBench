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
struct task_struct {int dummy; } ;
struct cred {int dummy; } ;
struct aa_task_ctx {scalar_t__ onexec; scalar_t__ previous; } ;
struct aa_label {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOENT ; 
 struct aa_label* FUNC0 (scalar_t__) ; 
 int FUNC1 (struct aa_label*,char**) ; 
 int /*<<< orphan*/  FUNC2 (struct aa_label*) ; 
 scalar_t__ FUNC3 (struct cred const*) ; 
 int /*<<< orphan*/  current ; 
 struct cred* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct cred const*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 struct aa_task_ctx* FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct task_struct *task, char *name,
				char **value)
{
	int error = -ENOENT;
	/* released below */
	const struct cred *cred = FUNC4(task);
	struct aa_task_ctx *ctx = FUNC7(current);
	struct aa_label *label = NULL;

	if (FUNC6(name, "current") == 0)
		label = FUNC0(FUNC3(cred));
	else if (FUNC6(name, "prev") == 0  && ctx->previous)
		label = FUNC0(ctx->previous);
	else if (FUNC6(name, "exec") == 0 && ctx->onexec)
		label = FUNC0(ctx->onexec);
	else
		error = -EINVAL;

	if (label)
		error = FUNC1(label, value);

	FUNC2(label);
	FUNC5(cred);

	return error;
}