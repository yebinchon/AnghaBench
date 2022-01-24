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
struct ubifs_info {scalar_t__ cmt_state; int /*<<< orphan*/  cs_lock; } ;

/* Variables and functions */
 scalar_t__ COMMIT_BACKGROUND ; 
 scalar_t__ COMMIT_RESTING ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ubifs_info*) ; 

void FUNC5(struct ubifs_info *c)
{
	FUNC2(&c->cs_lock);
	if (c->cmt_state == COMMIT_RESTING) {
		FUNC0("old: %s, new: %s", FUNC1(c->cmt_state),
			FUNC1(COMMIT_BACKGROUND));
		c->cmt_state = COMMIT_BACKGROUND;
		FUNC3(&c->cs_lock);
		FUNC4(c);
	} else
		FUNC3(&c->cs_lock);
}