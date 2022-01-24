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
struct ubifs_info {int cmt_state; int /*<<< orphan*/  cs_lock; } ;

/* Variables and functions */
#define  COMMIT_BACKGROUND 133 
#define  COMMIT_BROKEN 132 
#define  COMMIT_REQUIRED 131 
#define  COMMIT_RESTING 130 
#define  COMMIT_RUNNING_BACKGROUND 129 
#define  COMMIT_RUNNING_REQUIRED 128 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(struct ubifs_info *c)
{
	FUNC2(&c->cs_lock);
	switch (c->cmt_state) {
	case COMMIT_RESTING:
	case COMMIT_BACKGROUND:
		FUNC0("old: %s, new: %s", FUNC1(c->cmt_state),
			FUNC1(COMMIT_REQUIRED));
		c->cmt_state = COMMIT_REQUIRED;
		break;
	case COMMIT_RUNNING_BACKGROUND:
		FUNC0("old: %s, new: %s", FUNC1(c->cmt_state),
			FUNC1(COMMIT_RUNNING_REQUIRED));
		c->cmt_state = COMMIT_RUNNING_REQUIRED;
		break;
	case COMMIT_REQUIRED:
	case COMMIT_RUNNING_REQUIRED:
	case COMMIT_BROKEN:
		break;
	}
	FUNC3(&c->cs_lock);
}