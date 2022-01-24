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
struct task_smack {int /*<<< orphan*/  smk_relabel; int /*<<< orphan*/  smk_rules; int /*<<< orphan*/  smk_task; } ;
typedef  struct cred const cred ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct task_smack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct task_smack* FUNC1 (struct cred const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct cred *new, const struct cred *old,
			      gfp_t gfp)
{
	struct task_smack *old_tsp = FUNC1(old);
	struct task_smack *new_tsp = FUNC1(new);
	int rc;

	FUNC0(new_tsp, old_tsp->smk_task, old_tsp->smk_task);

	rc = FUNC3(&new_tsp->smk_rules, &old_tsp->smk_rules, gfp);
	if (rc != 0)
		return rc;

	rc = FUNC2(&new_tsp->smk_relabel, &old_tsp->smk_relabel,
				gfp);
	return rc;
}