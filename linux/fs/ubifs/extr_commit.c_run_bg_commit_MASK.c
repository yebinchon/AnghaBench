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
struct ubifs_info {scalar_t__ cmt_state; int /*<<< orphan*/  cs_lock; int /*<<< orphan*/  commit_sem; } ;

/* Variables and functions */
 scalar_t__ COMMIT_BACKGROUND ; 
 scalar_t__ COMMIT_REQUIRED ; 
 scalar_t__ COMMIT_RUNNING_BACKGROUND ; 
 scalar_t__ COMMIT_RUNNING_REQUIRED ; 
 int FUNC0 (struct ubifs_info*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct ubifs_info *c)
{
	FUNC2(&c->cs_lock);
	/*
	 * Run background commit only if background commit was requested or if
	 * commit is required.
	 */
	if (c->cmt_state != COMMIT_BACKGROUND &&
	    c->cmt_state != COMMIT_REQUIRED)
		goto out;
	FUNC3(&c->cs_lock);

	FUNC1(&c->commit_sem);
	FUNC2(&c->cs_lock);
	if (c->cmt_state == COMMIT_REQUIRED)
		c->cmt_state = COMMIT_RUNNING_REQUIRED;
	else if (c->cmt_state == COMMIT_BACKGROUND)
		c->cmt_state = COMMIT_RUNNING_BACKGROUND;
	else
		goto out_cmt_unlock;
	FUNC3(&c->cs_lock);

	return FUNC0(c);

out_cmt_unlock:
	FUNC4(&c->commit_sem);
out:
	FUNC3(&c->cs_lock);
	return 0;
}